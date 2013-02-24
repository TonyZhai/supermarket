package com.tonyzhai.blog.domain;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.PersistenceContext;
import javax.persistence.PostPersist;
import javax.persistence.PostUpdate;
import javax.persistence.PreRemove;
import javax.persistence.Version;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.solr.RooSolrSearchable;
import org.springframework.roo.addon.tostring.RooToString;
import org.springframework.scheduling.annotation.Async;
import org.springframework.transaction.annotation.Transactional;

@Configurable
@Entity
public class Topping {

    @NotNull
    @Size(min = 2)
    private String name;

    @ManyToMany(cascade = CascadeType.ALL)
    private Set<com.tonyzhai.blog.domain.Topping> toppings = new HashSet<com.tonyzhai.blog.domain.Topping>();

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Version
    @Column(name = "version")
    private Integer version;

    @PersistenceContext
    transient EntityManager entityManager;

    public String toString() {
        return ReflectionToStringBuilder.toString(this, ToStringStyle.SHORT_PREFIX_STYLE);
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getVersion() {
        return this.version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<com.tonyzhai.blog.domain.Topping> getToppings() {
        return this.toppings;
    }

    public void setToppings(Set<com.tonyzhai.blog.domain.Topping> toppings) {
        this.toppings = toppings;
    }

    public static final EntityManager entityManager() {
        EntityManager em = new Topping().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }

    public static long countToppings() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Topping o", Long.class).getSingleResult();
    }

    public static List<com.tonyzhai.blog.domain.Topping> findAllToppings() {
        return entityManager().createQuery("SELECT o FROM Topping o", Topping.class).getResultList();
    }

    public static com.tonyzhai.blog.domain.Topping findTopping(Long id) {
        if (id == null) return null;
        return entityManager().find(Topping.class, id);
    }

    public static List<com.tonyzhai.blog.domain.Topping> findToppingEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Topping o", Topping.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }

    @Transactional
    public void persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }

    @Transactional
    public void remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Topping attached = Topping.findTopping(this.id);
            this.entityManager.remove(attached);
        }
    }

    @Transactional
    public void flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }

    @Transactional
    public void clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }

    @Transactional
    public com.tonyzhai.blog.domain.Topping merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Topping merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }

	@Autowired
    transient SolrServer solrServer;

	public static QueryResponse search(String queryString) {
        String searchString = "Topping_solrsummary_t:" + queryString;
        return search(new SolrQuery(searchString.toLowerCase()));
    }

	public static QueryResponse search(SolrQuery query) {
        try {
            return solrServer().query(query);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new QueryResponse();
    }

	public static void indexTopping(Topping topping) {
        List<Topping> toppings = new ArrayList<Topping>();
        toppings.add(topping);
        indexToppings(toppings);
    }

	@Async
    public static void indexToppings(Collection<Topping> toppings) {
        List<SolrInputDocument> documents = new ArrayList<SolrInputDocument>();
        for (Topping topping : toppings) {
            SolrInputDocument sid = new SolrInputDocument();
            sid.addField("id", "topping_" + topping.getId());
            sid.addField("topping.id_l", topping.getId());
            sid.addField("topping.name_s", topping.getName());
            // Add summary field to allow searching documents for objects of this type
            sid.addField("topping_solrsummary_t", new StringBuilder().append(topping.getId()).append(" ").append(topping.getName()));
            documents.add(sid);
        }
        try {
            SolrServer solrServer = solrServer();
            solrServer.add(documents);
            solrServer.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	@Async
    public static void deleteIndex(Topping topping) {
        SolrServer solrServer = solrServer();
        try {
            solrServer.deleteById("topping_" + topping.getId());
            solrServer.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	@PostUpdate
    @PostPersist
    private void postPersistOrUpdate() {
        indexTopping(this);
    }

	@PreRemove
    private void preRemove() {
        deleteIndex(this);
    }

	public static final SolrServer solrServer() {
        SolrServer _solrServer = new Topping().solrServer;
        if (_solrServer == null) throw new IllegalStateException("Solr server has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return _solrServer;
    }
}
