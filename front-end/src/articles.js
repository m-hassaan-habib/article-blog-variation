import {fetchArticles} from '../src/api/backend'

export async function getRandomArticle(){
    let data = await fetchArticles()
    const randomBlog = data[Math.floor(Math.random() * data.length)];
    const randomArticle = randomBlog.articles[Math.floor(Math.random() * randomBlog.articles.length)];
    const randomArticleVariation = randomArticle.article_variations[Math.floor(Math.random() * randomArticle.article_variations.length)];

    return {blogName: randomBlog.name, article: randomArticle, article_variation: randomArticleVariation}
}
