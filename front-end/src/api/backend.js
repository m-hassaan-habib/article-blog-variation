export const fetchArticles = async () => {
  try {
    const response = await fetch("http://localhost:3000/api/v1/articles", {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json'
      },
    });

    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }

    return response.json();
  } catch (error) {
    console.error('Error fetching articles:', error);
    throw error;
  }
}

export const setArticleSignUpCount = async (article_id, data) => {
  try {
    const response = await fetch(`http://localhost:3000/api/v1/articles/${article_id}/set_article_sign_up_count`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({event: data})
    });

    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
  } catch (error) {
    console.error('Error', error);
    throw error;
  }
}

export const setArticlePageViews = async (article_id, data) => {
  try {
    const response = await fetch(`http://localhost:3000/api/v1/articles/${article_id}/set_article_page_view`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({event: data})
    });

    if (!response.ok) {
      throw new Error(`HTTP error! Status: ${response.status}`);
    }
  } catch (error) {
    console.error('Error', error);
    throw error;
  }
}
