//package com.tonyzhai.blog.domain;
//
//import java.util.List;
//import org.junit.Assert;
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Configurable;
//import org.springframework.roo.addon.test.RooIntegrationTest;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import org.springframework.transaction.annotation.Transactional;
//
//@Configurable
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml")
//@Transactional
//@RooIntegrationTest(entity = Article.class)
//public class ArticleIntegrationTest {
//
//    @Test
//    public void testMarkerMethod() {
//    }
//
//	@Autowired
//    ArticleDataOnDemand dod;
//
//	@Test
//    public void testCountArticles() {
//        Assert.assertNotNull("Data on demand for 'Article' failed to initialize correctly", dod.getRandomArticle());
//        long count = Article.countArticles();
//        Assert.assertTrue("Counter for 'Article' incorrectly reported there were no entries", count > 0);
//    }
//
//	@Test
//    public void testFindArticle() {
//        Article obj = dod.getRandomArticle();
//        Assert.assertNotNull("Data on demand for 'Article' failed to initialize correctly", obj);
//        Long id = obj.getId();
//        Assert.assertNotNull("Data on demand for 'Article' failed to provide an identifier", id);
//        obj = Article.findArticle(id);
//        Assert.assertNotNull("Find method for 'Article' illegally returned null for id '" + id + "'", obj);
//        Assert.assertEquals("Find method for 'Article' returned the incorrect identifier", id, obj.getId());
//    }
//
//	@Test
//    public void testFindAllArticles() {
//        Assert.assertNotNull("Data on demand for 'Article' failed to initialize correctly", dod.getRandomArticle());
//        long count = Article.countArticles();
//        Assert.assertTrue("Too expensive to perform a find all test for 'Article', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
//        List<Article> result = Article.findAllArticles();
//        Assert.assertNotNull("Find all method for 'Article' illegally returned null", result);
//        Assert.assertTrue("Find all method for 'Article' failed to return any data", result.size() > 0);
//    }
//
//	@Test
//    public void testFindArticleEntries() {
//        Assert.assertNotNull("Data on demand for 'Article' failed to initialize correctly", dod.getRandomArticle());
//        long count = Article.countArticles();
//        if (count > 20) count = 20;
//        int firstResult = 0;
//        int maxResults = (int) count;
//        List<Article> result = Article.findArticleEntries(firstResult, maxResults);
//        Assert.assertNotNull("Find entries method for 'Article' illegally returned null", result);
//        Assert.assertEquals("Find entries method for 'Article' returned an incorrect number of entries", count, result.size());
//    }
//
//	@Test
//    public void testFlush() {
//        Article obj = dod.getRandomArticle();
//        Assert.assertNotNull("Data on demand for 'Article' failed to initialize correctly", obj);
//        Long id = obj.getId();
//        Assert.assertNotNull("Data on demand for 'Article' failed to provide an identifier", id);
//        obj = Article.findArticle(id);
//        Assert.assertNotNull("Find method for 'Article' illegally returned null for id '" + id + "'", obj);
//        boolean modified =  dod.modifyArticle(obj);
//        Integer currentVersion = obj.getVersion();
//        obj.flush();
//        Assert.assertTrue("Version for 'Article' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
//    }
//
//	@Test
//    public void testMergeUpdate() {
//        Article obj = dod.getRandomArticle();
//        Assert.assertNotNull("Data on demand for 'Article' failed to initialize correctly", obj);
//        Long id = obj.getId();
//        Assert.assertNotNull("Data on demand for 'Article' failed to provide an identifier", id);
//        obj = Article.findArticle(id);
//        boolean modified =  dod.modifyArticle(obj);
//        Integer currentVersion = obj.getVersion();
//        Article merged = obj.merge();
//        obj.flush();
//        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
//        Assert.assertTrue("Version for 'Article' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
//    }
//
//	@Test
//    public void testPersist() {
//        Assert.assertNotNull("Data on demand for 'Article' failed to initialize correctly", dod.getRandomArticle());
//        Article obj = dod.getNewTransientArticle(Integer.MAX_VALUE);
//        Assert.assertNotNull("Data on demand for 'Article' failed to provide a new transient entity", obj);
//        Assert.assertNull("Expected 'Article' identifier to be null", obj.getId());
//        obj.persist();
//        obj.flush();
//        Assert.assertNotNull("Expected 'Article' identifier to no longer be null", obj.getId());
//    }
//
//	@Test
//    public void testRemove() {
//        Article obj = dod.getRandomArticle();
//        Assert.assertNotNull("Data on demand for 'Article' failed to initialize correctly", obj);
//        Long id = obj.getId();
//        Assert.assertNotNull("Data on demand for 'Article' failed to provide an identifier", id);
//        obj = Article.findArticle(id);
//        obj.remove();
//        obj.flush();
//        Assert.assertNull("Failed to remove 'Article' with identifier '" + id + "'", Article.findArticle(id));
//    }
//}
