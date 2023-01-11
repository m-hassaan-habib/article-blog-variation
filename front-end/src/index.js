import "./styles.css";
import { trackPageview, trackEvent } from "../src/api/analytics-api";
import { getRandomArticle } from "./articles";

let signUp = document.getElementById("signup")

window.addEventListener('click', ()=>{
  if (!Object.keys(window.localStorage).find(x=> x=='Click')){
    window.localStorage.setItem("Click", "true")
    trackPageview("Click",window.localStorage.getItem("testVariation"))
  }
})

window.addEventListener('DOMContentLoaded', ()=>{

  if (!Object.keys(window.localStorage).find(x=> x=='testVariation')){
    getRandomArticle().then(data=>{
      window.localStorage.setItem("PageView", "true")
      trackPageview("PageView",JSON.stringify(data.article_variation))
      document.getElementById("test-variation").innerHTML = data.article_variation.article_variation
      window.localStorage.setItem("testVariation", JSON.stringify(data.article_variation))
      }
    )
  } else{
    document.getElementById("test-variation").innerHTML = JSON.parse(window.localStorage.getItem("testVariation")).article_variation
  }
})

signUp.addEventListener('click', ()=>{
  if(!Object.keys(window.localStorage).find(x=> x=='SignUp')){
    window.localStorage.setItem("SignUp", "true")
    trackEvent("SignUp",window.localStorage.getItem("testVariation"))
  }
})
