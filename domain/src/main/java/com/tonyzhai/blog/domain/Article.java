package com.tonyzhai.blog.domain;import com.tonyzhai.blog.domain.base.domain.BaseInfo;import org.codehaus.jackson.annotate.JsonIgnoreProperties;import org.hibernate.annotations.GenericGenerator;import javax.persistence.*;import javax.validation.constraints.NotNull;/** * Article domain model * * @author Tony Zhai * @since 13-2-24 AM1:36 */@GenericGenerator(name = "article_uuid", strategy = "uuid")@Entity@JsonIgnoreProperties({        "version"})public class Article {    @Id    @GeneratedValue(generator = "article_uuid")    private String id;    @Version    private Integer version;    @Embedded    private BaseInfo baseInfo = new BaseInfo();    @NotNull    private String title;//    @Lob    @NotNull    private String content;    public Article() {    }    public Article(String title, String content) {        this.title = title;        this.content = content;    }    public String getId() {        return id;    }    public void setId(String id) {        this.id = id;    }    public Integer getVersion() {        return version;    }    public void setVersion(Integer version) {        this.version = version;    }    public BaseInfo getBaseInfo() {        return baseInfo;    }    public void setBaseInfo(BaseInfo baseInfo) {        this.baseInfo = baseInfo;    }    public String getTitle() {        return title;    }    public void setTitle(String title) {        this.title = title;    }    public String getContent() {        return content;    }    public void setContent(String content) {        this.content = content;    }}