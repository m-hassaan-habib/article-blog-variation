import { setArticlePageViews, setArticleSignUpCount} from "./backend";
/**
 * Tracks a pageview to our "imaginary api" - in this demo just the browser console. ;)
 * Send as params whatever you might seem valuable to send.
 * The URL is probably a good start though.
 */
export const trackPageview = (params, article) => {
  article = JSON.parse(article)
  setArticlePageViews(article.id,params)
  console.log(`--> Tracking Pageview: ${params}`);
};

/**
 * Tracks an event to our "imaginary api" - in this demo just the browser console. ;)
 * Send as params whatever you might seem valuable to send.
 * The URL and an event name are probably a good start though.
 */
export const trackEvent = (params, article) => {
  article = JSON.parse(article)
  setArticleSignUpCount(article.id,params)
  console.log(`--> Tracking Event: ${params}`);
};
