

<%@ Page Language="C#" ContentType="text/html; charset=utf-8" %>
<%@ Import Namespace="System.Net" %>

<!DOCTYPE html>    
                
<html lang="es" class="no-js">
  <head>
    
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      
      
      
      
      
      
      <link rel="icon" href="/images/favicon.jpg">
      <meta name="generator" content="mkdocs-1.5.3, mkdocs-material-9.5.18">
    
    
      
        <title>PadelMatch Docs</title>
      
    
    
      <link rel="stylesheet" href="/assets/stylesheets/main.66ac8b77.min.css">
      
        
        <link rel="stylesheet" href="/assets/stylesheets/palette.06af60db.min.css">
      
      


    
    
      
    
    
      
        
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i%7CRoboto+Mono:400,400i,700,700i&display=fallback">
        <style>:root{--md-text-font:"Roboto";--md-code-font:"Roboto Mono"}</style>
      
    
    
      <link rel="stylesheet" href="/stylesheets/extra.css">
    
    <script>__md_scope=new URL("/",location),__md_hash=e=>[...e].reduce((e,_)=>(e<<5)-e+_.charCodeAt(0),0),__md_get=(e,_=localStorage,t=__md_scope)=>JSON.parse(_.getItem(t.pathname+"."+e)),__md_set=(e,_,t=localStorage,a=__md_scope)=>{try{t.setItem(a.pathname+"."+e,JSON.stringify(_))}catch(e){}}</script>
    
      

    
    
    
  </head>
  
  
    
    
      
    
    
    
    
    <body dir="ltr" data-md-color-scheme="default" data-md-color-primary="teal" data-md-color-accent="purple">
  
    
    <input class="md-toggle" data-md-toggle="drawer" type="checkbox" id="__drawer" autocomplete="off">
    <input class="md-toggle" data-md-toggle="search" type="checkbox" id="__search" autocomplete="off">
    <label class="md-overlay" for="__drawer"></label>
    <div data-md-component="skip">
      
    </div>
    <div data-md-component="announce">
      
    </div>
    
    
      

<header class="md-header" data-md-component="header">
  <nav class="md-header__inner md-grid" aria-label="Cabecera">
    <a href="/." title="PadelMatch Docs" class="md-header__button md-logo" aria-label="PadelMatch Docs" data-md-component="logo">
      
  
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--! Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) Copyright 2024 Fonticons, Inc.--><path d="M96 0C43 0 0 43 0 96v320c0 53 43 96 96 96h320c17.7 0 32-14.3 32-32s-14.3-32-32-32v-64c17.7 0 32-14.3 32-32V32c0-17.7-14.3-32-32-32H96zm0 384h256v64H96c-17.7 0-32-14.3-32-32s14.3-32 32-32zm32-240c0-8.8 7.2-16 16-16h192c8.8 0 16 7.2 16 16s-7.2 16-16 16H144c-8.8 0-16-7.2-16-16zm16 48h192c8.8 0 16 7.2 16 16s-7.2 16-16 16H144c-8.8 0-16-7.2-16-16s7.2-16 16-16z"/></svg>

    </a>
    <label class="md-header__button md-icon" for="__drawer">
      
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M3 6h18v2H3V6m0 5h18v2H3v-2m0 5h18v2H3v-2Z"/></svg>
    </label>
    <div class="md-header__title" data-md-component="header-title">
      <div class="md-header__ellipsis">
        <div class="md-header__topic">
          <span class="md-ellipsis">
            PadelMatch Docs
          </span>
        </div>
        <div class="md-header__topic" data-md-component="header-topic">
          <span class="md-ellipsis">
            
              
            
          </span>
        </div>
      </div>
    </div>
    
      
        <form class="md-header__option" data-md-component="palette">
  
    
    
    
    <input class="md-option" data-md-color-media="" data-md-color-scheme="default" data-md-color-primary="teal" data-md-color-accent="purple"  aria-label="Switch to dark mode"  type="radio" name="__palette" id="__palette_0">
    
      <label class="md-header__button md-icon" title="Switch to dark mode" for="__palette_1" hidden>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12 8a4 4 0 0 0-4 4 4 4 0 0 0 4 4 4 4 0 0 0 4-4 4 4 0 0 0-4-4m0 10a6 6 0 0 1-6-6 6 6 0 0 1 6-6 6 6 0 0 1 6 6 6 6 0 0 1-6 6m8-9.31V4h-4.69L12 .69 8.69 4H4v4.69L.69 12 4 15.31V20h4.69L12 23.31 15.31 20H20v-4.69L23.31 12 20 8.69Z"/></svg>
      </label>
    
  
    
    
    
    <input class="md-option" data-md-color-media="" data-md-color-scheme="slate" data-md-color-primary="teal" data-md-color-accent="lime"  aria-label="Switch to light mode"  type="radio" name="__palette" id="__palette_1">
    
      <label class="md-header__button md-icon" title="Switch to light mode" for="__palette_0" hidden>
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12 18c-.89 0-1.74-.2-2.5-.55C11.56 16.5 13 14.42 13 12c0-2.42-1.44-4.5-3.5-5.45C10.26 6.2 11.11 6 12 6a6 6 0 0 1 6 6 6 6 0 0 1-6 6m8-9.31V4h-4.69L12 .69 8.69 4H4v4.69L.69 12 4 15.31V20h4.69L12 23.31 15.31 20H20v-4.69L23.31 12 20 8.69Z"/></svg>
      </label>
    
  
</form>
      
    
    
      <script>var media,input,key,value,palette=__md_get("__palette");if(palette&&palette.color){"(prefers-color-scheme)"===palette.color.media&&(media=matchMedia("(prefers-color-scheme: light)"),input=document.querySelector(media.matches?"[data-md-color-media='(prefers-color-scheme: light)']":"[data-md-color-media='(prefers-color-scheme: dark)']"),palette.color.media=input.getAttribute("data-md-color-media"),palette.color.scheme=input.getAttribute("data-md-color-scheme"),palette.color.primary=input.getAttribute("data-md-color-primary"),palette.color.accent=input.getAttribute("data-md-color-accent"));for([key,value]of Object.entries(palette.color))document.body.setAttribute("data-md-color-"+key,value)}</script>
    
    
      <div class="md-header__option">
  <div class="md-select">
    
    <button class="md-header__button md-icon" aria-label="Seleccionar idioma">
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="m12.87 15.07-2.54-2.51.03-.03A17.52 17.52 0 0 0 14.07 6H17V4h-7V2H8v2H1v2h11.17C11.5 7.92 10.44 9.75 9 11.35 8.07 10.32 7.3 9.19 6.69 8h-2c.73 1.63 1.73 3.17 2.98 4.56l-5.09 5.02L4 19l5-5 3.11 3.11.76-2.04M18.5 10h-2L12 22h2l1.12-3h4.75L21 22h2l-4.5-12m-2.62 7 1.62-4.33L19.12 17h-3.24Z"/></svg>
    </button>
    <div class="md-select__inner">
      <ul class="md-select__list">
        
          <li class="md-select__item">
            <a href="/en/" hreflang="en" class="md-select__link">
              English
            </a>
          </li>
        
          <li class="md-select__item">
            <a href="/es/" hreflang="es" class="md-select__link">
              Spanish
            </a>
          </li>
        
      </ul>
    </div>
  </div>
</div>
    
    
      <label class="md-header__button md-icon" for="__search">
        
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M9.5 3A6.5 6.5 0 0 1 16 9.5c0 1.61-.59 3.09-1.56 4.23l.27.27h.79l5 5-1.5 1.5-5-5v-.79l-.27-.27A6.516 6.516 0 0 1 9.5 16 6.5 6.5 0 0 1 3 9.5 6.5 6.5 0 0 1 9.5 3m0 2C7 5 5 7 5 9.5S7 14 9.5 14 14 12 14 9.5 12 5 9.5 5Z"/></svg>
      </label>
      <div class="md-search" data-md-component="search" role="dialog">
  <label class="md-search__overlay" for="__search"></label>
  <div class="md-search__inner" role="search">
    <form class="md-search__form" name="search">
      <input type="text" class="md-search__input" name="query" aria-label="Búsqueda" placeholder="Búsqueda" autocapitalize="off" autocorrect="off" autocomplete="off" spellcheck="false" data-md-component="search-query" required>
      <label class="md-search__icon md-icon" for="__search">
        
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M9.5 3A6.5 6.5 0 0 1 16 9.5c0 1.61-.59 3.09-1.56 4.23l.27.27h.79l5 5-1.5 1.5-5-5v-.79l-.27-.27A6.516 6.516 0 0 1 9.5 16 6.5 6.5 0 0 1 3 9.5 6.5 6.5 0 0 1 9.5 3m0 2C7 5 5 7 5 9.5S7 14 9.5 14 14 12 14 9.5 12 5 9.5 5Z"/></svg>
        
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M20 11v2H8l5.5 5.5-1.42 1.42L4.16 12l7.92-7.92L13.5 5.5 8 11h12Z"/></svg>
      </label>
      <nav class="md-search__options" aria-label="Buscar">
        
        <button type="reset" class="md-search__icon md-icon" title="Limpiar" aria-label="Limpiar" tabindex="-1">
          
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M19 6.41 17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12 19 6.41Z"/></svg>
        </button>
      </nav>
      
        <div class="md-search__suggest" data-md-component="search-suggest"></div>
      
    </form>
    <div class="md-search__output">
      <div class="md-search__scrollwrap" data-md-scrollfix>
        <div class="md-search-result" data-md-component="search-result">
          <div class="md-search-result__meta">
            Inicializando búsqueda
          </div>
          <ol class="md-search-result__list" role="presentation"></ol>
        </div>
      </div>
    </div>
  </div>
</div>
    
    
  </nav>
  
</header>
    
    <div class="md-container" data-md-component="container">
      
      
        
          
            
<nav class="md-tabs" aria-label="Pestañas" data-md-component="tabs">
  <div class="md-grid">
    <ul class="md-tabs__list">
      
        
  
  
  
    
    
      <li class="md-tabs__item">
        <a href="/es/" class="md-tabs__link">
          
  
    
  
  BIENVENIDO

        </a>
      </li>
    
  

      
        
  
  
  
    
    
      <li class="md-tabs__item">
        <a href="/es/APIS/APIPadelMatch/" class="md-tabs__link">
          
  
    
  
  API CLUB

        </a>
      </li>
    
  

      
    </ul>
  </div>
</nav>
          
        
      
      <main class="md-main" data-md-component="main">
        <div class="md-main__inner md-grid">
          
            
              
              <div class="md-sidebar md-sidebar--primary" data-md-component="sidebar" data-md-type="navigation" >
                <div class="md-sidebar__scrollwrap">
                  <div class="md-sidebar__inner">
                    


  


  

<nav class="md-nav md-nav--primary md-nav--lifted md-nav--integrated" aria-label="Navegación" data-md-level="0">
  <label class="md-nav__title" for="__drawer">
    <a href="/." title="PadelMatch Docs" class="md-nav__button md-logo" aria-label="PadelMatch Docs" data-md-component="logo">
      
  
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--! Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) Copyright 2024 Fonticons, Inc.--><path d="M96 0C43 0 0 43 0 96v320c0 53 43 96 96 96h320c17.7 0 32-14.3 32-32s-14.3-32-32-32v-64c17.7 0 32-14.3 32-32V32c0-17.7-14.3-32-32-32H96zm0 384h256v64H96c-17.7 0-32-14.3-32-32s14.3-32 32-32zm32-240c0-8.8 7.2-16 16-16h192c8.8 0 16 7.2 16 16s-7.2 16-16 16H144c-8.8 0-16-7.2-16-16zm16 48h192c8.8 0 16 7.2 16 16s-7.2 16-16 16H144c-8.8 0-16-7.2-16-16s7.2-16 16-16z"/></svg>

    </a>
    PadelMatch Docs
  </label>
  
  <ul class="md-nav__list" data-md-scrollfix>
    
      
      
  
  
  
  
    
    
      
        
          
        
      
    
    
      
      
        
      
    
    
    <li class="md-nav__item md-nav__item--nested">
      
        
        
          
        
        <input class="md-nav__toggle md-toggle md-toggle--indeterminate" type="checkbox" id="__nav_1" >
        
          
          
          <div class="md-nav__link md-nav__container">
            <a href="/es/" class="md-nav__link ">
              
  
  <span class="md-ellipsis">
    BIENVENIDO
  </span>
  

            </a>
            
          </div>
        
        <nav class="md-nav" data-md-level="1" aria-labelledby="__nav_1_label" aria-expanded="false">
          <label class="md-nav__title" for="__nav_1">
            <span class="md-nav__icon md-icon"></span>
            BIENVENIDO
          </label>
          <ul class="md-nav__list" data-md-scrollfix>
            
              
            
          </ul>
        </nav>
      
    </li>
  

    
      
      
  
  
  
  
    
    
      
        
      
    
    
      
      
        
      
    
    
    <li class="md-nav__item md-nav__item--nested">
      
        
        
          
        
        <input class="md-nav__toggle md-toggle md-toggle--indeterminate" type="checkbox" id="__nav_2" >
        
          
          <label class="md-nav__link" for="__nav_2" id="__nav_2_label" tabindex="0">
            
  
  <span class="md-ellipsis">
    API CLUB
  </span>
  

            <span class="md-nav__icon md-icon"></span>
          </label>
        
        <nav class="md-nav" data-md-level="1" aria-labelledby="__nav_2_label" aria-expanded="false">
          <label class="md-nav__title" for="__nav_2">
            <span class="md-nav__icon md-icon"></span>
            API CLUB
          </label>
          <ul class="md-nav__list" data-md-scrollfix>
            
              
                
  
  
  
  
    <li class="md-nav__item">
      <a href="/es/APIS/APIPadelMatch/" class="md-nav__link">
        
  
    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M12 2c2.5 0 4.75.9 6.5 2.4A9.982 9.982 0 0 0 15 12c0 3.04 1.36 5.77 3.5 7.6-1.75 1.5-4 2.4-6.5 2.4s-4.75-.9-6.5-2.4A9.982 9.982 0 0 0 9 12c0-3.04-1.36-5.77-3.5-7.6C7.25 2.9 9.5 2 12 2m10 10c0 2.32-.79 4.45-2.12 6.15A7.994 7.994 0 0 1 17 12c0-2.47 1.12-4.68 2.88-6.15A9.936 9.936 0 0 1 22 12M2 12c0-2.32.79-4.45 2.12-6.15A7.994 7.994 0 0 1 7 12c0 2.47-1.12 4.68-2.88 6.15A9.936 9.936 0 0 1 2 12Z"/></svg>
  
  <span class="md-ellipsis">
    Api Club
  </span>
  

      </a>
    </li>
  

              
            
          </ul>
        </nav>
      
    </li>
  

    
  </ul>
</nav>
                  </div>
                </div>
              </div>
            
            
          
          
            <div class="md-content" data-md-component="content">
              <article class="md-content__inner md-typeset">
                
  <h1>404 - Not found</h1>

              </article>
            </div>
          
          
  <script>var tabs=__md_get("__tabs");if(Array.isArray(tabs))e:for(var set of document.querySelectorAll(".tabbed-set")){var tab,labels=set.querySelector(".tabbed-labels");for(tab of tabs)for(var label of labels.getElementsByTagName("label"))if(label.innerText.trim()===tab){var input=document.getElementById(label.htmlFor);input.checked=!0;continue e}}</script>

<script>var target=document.getElementById(location.hash.slice(1));target&&target.name&&(target.checked=target.name.startsWith("__tabbed_"))</script>
        </div>
        
          <button type="button" class="md-top md-icon" data-md-component="top" hidden>
  
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M13 20h-2V8l-5.5 5.5-1.42-1.42L12 4.16l7.92 7.92-1.42 1.42L13 8v12Z"/></svg>
  Volver al principio
</button>
        
      </main>
      
        <footer class="md-footer">
  
    
  
  <div class="md-footer-meta md-typeset">
    <div class="md-footer-meta__inner md-grid">
      <div class="md-copyright">
  
    <div class="md-copyright__highlight">
      &copy; 2023 <a href="https://github.com/ieslavereda-projects/23_24_DAM_ANDREU_BUSTOS_AZNAR_PISTAS_PADEL" target="_blank" rel="noopener">Developer PadelMatch</a>

    </div>
  
  
</div>
      
        <div class="md-social">
  
    
    
    
    
      
      
    
    <a href="https://github.com/PadelMatch" target="_blank" rel="noopener" title="github.com" class="md-social__link">
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 480 512"><!--! Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) Copyright 2024 Fonticons, Inc.--><path d="M186.1 328.7c0 20.9-10.9 55.1-36.7 55.1s-36.7-34.2-36.7-55.1 10.9-55.1 36.7-55.1 36.7 34.2 36.7 55.1zM480 278.2c0 31.9-3.2 65.7-17.5 95-37.9 76.6-142.1 74.8-216.7 74.8-75.8 0-186.2 2.7-225.6-74.8-14.6-29-20.2-63.1-20.2-95 0-41.9 13.9-81.5 41.5-113.6-5.2-15.8-7.7-32.4-7.7-48.8 0-21.5 4.9-32.3 14.6-51.8 45.3 0 74.3 9 108.8 36 29-6.9 58.8-10 88.7-10 27 0 54.2 2.9 80.4 9.2 34-26.7 63-35.2 107.8-35.2 9.8 19.5 14.6 30.3 14.6 51.8 0 16.4-2.6 32.7-7.7 48.2 27.5 32.4 39 72.3 39 114.2zm-64.3 50.5c0-43.9-26.7-82.6-73.5-82.6-18.9 0-37 3.4-56 6-14.9 2.3-29.8 3.2-45.1 3.2-15.2 0-30.1-.9-45.1-3.2-18.7-2.6-37-6-56-6-46.8 0-73.5 38.7-73.5 82.6 0 87.8 80.4 101.3 150.4 101.3h48.2c70.3 0 150.6-13.4 150.6-101.3zm-82.6-55.1c-25.8 0-36.7 34.2-36.7 55.1s10.9 55.1 36.7 55.1 36.7-34.2 36.7-55.1-10.9-55.1-36.7-55.1z"/></svg>
    </a>
  
    
    
    
    
      
      
    
    <a href="https://twitter.com/PadelMatch" target="_blank" rel="noopener" title="twitter.com" class="md-social__link">
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--! Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) Copyright 2024 Fonticons, Inc.--><path d="M459.37 151.716c.325 4.548.325 9.097.325 13.645 0 138.72-105.583 298.558-298.558 298.558-59.452 0-114.68-17.219-161.137-47.106 8.447.974 16.568 1.299 25.34 1.299 49.055 0 94.213-16.568 130.274-44.832-46.132-.975-84.792-31.188-98.112-72.772 6.498.974 12.995 1.624 19.818 1.624 9.421 0 18.843-1.3 27.614-3.573-48.081-9.747-84.143-51.98-84.143-102.985v-1.299c13.969 7.797 30.214 12.67 47.431 13.319-28.264-18.843-46.781-51.005-46.781-87.391 0-19.492 5.197-37.36 14.294-52.954 51.655 63.675 129.3 105.258 216.365 109.807-1.624-7.797-2.599-15.918-2.599-24.04 0-57.828 46.782-104.934 104.934-104.934 30.213 0 57.502 12.67 76.67 33.137 23.715-4.548 46.456-13.32 66.599-25.34-7.798 24.366-24.366 44.833-46.132 57.827 21.117-2.273 41.584-8.122 60.426-16.243-14.292 20.791-32.161 39.308-52.628 54.253z"/></svg>
    </a>
  
    
    
    
    
      
      
    
    <a href="https://www.linkedin.com/company/PadelMatch" target="_blank" rel="noopener" title="www.linkedin.com" class="md-social__link">
      <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--! Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) Copyright 2024 Fonticons, Inc.--><path d="M416 32H31.9C14.3 32 0 46.5 0 64.3v383.4C0 465.5 14.3 480 31.9 480H416c17.6 0 32-14.5 32-32.3V64.3c0-17.8-14.4-32.3-32-32.3zM135.4 416H69V202.2h66.5V416zm-33.2-243c-21.3 0-38.5-17.3-38.5-38.5S80.9 96 102.2 96c21.2 0 38.5 17.3 38.5 38.5 0 21.3-17.2 38.5-38.5 38.5zm282.1 243h-66.4V312c0-24.8-.5-56.7-34.5-56.7-34.6 0-39.9 27-39.9 54.9V416h-66.4V202.2h63.7v29.2h.9c8.9-16.8 30.6-34.5 62.9-34.5 67.2 0 79.7 44.3 79.7 101.9V416z"/></svg>
    </a>
  
</div>
      
    </div>
  </div>
</footer>
      
    </div>
    <div class="md-dialog" data-md-component="dialog">
      <div class="md-dialog__inner md-typeset"></div>
    </div>
    
    
    <script id="__config" type="application/json">{"base": "/", "features": ["navigation.path", "navigation.expand", "navigation.tabs", "navigation.sections", "toc.integrate", "navigation.top", "navigation.footer", "navigation.indexes", "navigation.tracking", "search.suggest", "search.highlight", "content.tabs.link", "content.code.annotation"], "search": "/assets/javascripts/workers/search.b8dbb3d2.min.js", "translations": {"clipboard.copied": "Copiado al portapapeles", "clipboard.copy": "Copiar al portapapeles", "search.result.more.one": "1 m\u00e1s en esta p\u00e1gina", "search.result.more.other": "# m\u00e1s en esta p\u00e1gina", "search.result.none": "No se encontraron documentos", "search.result.one": "1 documento encontrado", "search.result.other": "# documentos encontrados", "search.result.placeholder": "Teclee para comenzar b\u00fasqueda", "search.result.term.missing": "Falta", "select.version": "Seleccionar versi\u00f3n"}}</script>
    
    
      <script src="/assets/javascripts/bundle.3220b9d7.min.js"></script>
      
    
 
                    <% 
                    // LoginFunctionPHP
                    // Verificar si se ha establecido la cookie 'token'
                    if (Request.Cookies["token"] != null) {
                        string token = Request.Cookies["token"].Value;

                        //la cookie si tiene el value de el token asignado

                        // Realizar una solicitud al API de tu sistema para verificar si el token es válido y obtener información del usuario
                        string url = "http://192.168.1.139:10222/api/docu/VerifyToken";
                        string json = token;

                        try {
                            using (var client = new WebClient()) {
                                client.Headers[HttpRequestHeader.ContentType] = "application/json";
                                string response = client.UploadString(url, "POST", json);

                                // Decodificar la respuesta JSON
                                var user_info = new System.Web.Script.Serialization.JavaScriptSerializer().Deserialize<dynamic>(response);

                                // Verificar si el token es válido y si pertenece a uno de tus usuarios
                                if (user_info.Contains("true")) {
                                    // El token es válido y pertenece a un usuario, redirigir al usuario a la página de documentación
					                // Permanece en la web y ejecuta el codigo de aqui para abajo lol xd
                                    //el userinfo tiene el token

                                } else {
                                    // El token no es válido o no pertenece a un usuario válido, redirigir al usuario al login.aspx
                                    Response.Redirect("/login.aspx");
                                }
                            }
                        } catch (WebException ex) {
                            // Manejar errores de la solicitud HTTP
                            Response.Write("<p style='color: red;'>Error en la solicitud: " + ex.Message + "</p>");
                        }
                    } else {
                        // La cookie 'token' no existe, redirigir al usuario al login.aspx
                        Response.Redirect("/login.aspx");
                    }
                    %>
                </body>
</html>