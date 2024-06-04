

<%@ Page Language="C#" ContentType="text/html; charset=utf-8" %>
<%@ Import Namespace="System.Net" %>

<!DOCTYPE html>    
                
<html lang="es" class="no-js">
  <head>
    
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      
      
      
      
      
      
      <link rel="icon" href="../../../images/favicon.jpg">
      <meta name="generator" content="mkdocs-1.5.3, mkdocs-material-9.5.18">
    
    
      
        <title>APIPedidos - PadelMatch Docs</title>
      
    
    
      <link rel="stylesheet" href="../../../assets/stylesheets/main.66ac8b77.min.css">
      
        
        <link rel="stylesheet" href="../../../assets/stylesheets/palette.06af60db.min.css">
      
      


    
    
      
    
    
      
        
        
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i%7CRoboto+Mono:400,400i,700,700i&display=fallback">
        <style>:root{--md-text-font:"Roboto";--md-code-font:"Roboto Mono"}</style>
      
    
    
      <link rel="stylesheet" href="../../../stylesheets/extra.css">
    
    <script>__md_scope=new URL("../../..",location),__md_hash=e=>[...e].reduce((e,_)=>(e<<5)-e+_.charCodeAt(0),0),__md_get=(e,_=localStorage,t=__md_scope)=>JSON.parse(_.getItem(t.pathname+"."+e)),__md_set=(e,_,t=localStorage,a=__md_scope)=>{try{t.setItem(a.pathname+"."+e,JSON.stringify(_))}catch(e){}}</script>
    
      

    
    
    
  </head>
  
  
    
    
      
    
    
    
    
    <body dir="ltr" data-md-color-scheme="default" data-md-color-primary="teal" data-md-color-accent="purple">
  
    
    <input class="md-toggle" data-md-toggle="drawer" type="checkbox" id="__drawer" autocomplete="off">
    <input class="md-toggle" data-md-toggle="search" type="checkbox" id="__search" autocomplete="off">
    <label class="md-overlay" for="__drawer"></label>
    <div data-md-component="skip">
      
        
        <a href="#enums" class="md-skip">
          Saltar a contenido
        </a>
      
    </div>
    <div data-md-component="announce">
      
    </div>
    
    
      

<header class="md-header" data-md-component="header">
  <nav class="md-header__inner md-grid" aria-label="Cabecera">
    <a href="../../.." title="PadelMatch Docs" class="md-header__button md-logo" aria-label="PadelMatch Docs" data-md-component="logo">
      
  
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
            
              APIPedidos
            
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
        <a href="../../" class="md-tabs__link">
          
  
    
  
  BIENVENIDO

        </a>
      </li>
    
  

      
        
  
  
  
    
    
      <li class="md-tabs__item">
        <a href="../APIPadelMatch/" class="md-tabs__link">
          
  
    
  
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
    <a href="../../.." title="PadelMatch Docs" class="md-nav__button md-logo" aria-label="PadelMatch Docs" data-md-component="logo">
      
  
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><!--! Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) Copyright 2024 Fonticons, Inc.--><path d="M96 0C43 0 0 43 0 96v320c0 53 43 96 96 96h320c17.7 0 32-14.3 32-32s-14.3-32-32-32v-64c17.7 0 32-14.3 32-32V32c0-17.7-14.3-32-32-32H96zm0 384h256v64H96c-17.7 0-32-14.3-32-32s14.3-32 32-32zm32-240c0-8.8 7.2-16 16-16h192c8.8 0 16 7.2 16 16s-7.2 16-16 16H144c-8.8 0-16-7.2-16-16zm16 48h192c8.8 0 16 7.2 16 16s-7.2 16-16 16H144c-8.8 0-16-7.2-16-16s7.2-16 16-16z"/></svg>

    </a>
    PadelMatch Docs
  </label>
  
  <ul class="md-nav__list" data-md-scrollfix>
    
      
      
  
  
  
  
    
    
      
        
          
        
      
    
    
      
      
        
      
    
    
    <li class="md-nav__item md-nav__item--nested">
      
        
        
          
        
        <input class="md-nav__toggle md-toggle md-toggle--indeterminate" type="checkbox" id="__nav_1" >
        
          
          
          <div class="md-nav__link md-nav__container">
            <a href="../../" class="md-nav__link ">
              
  
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
      <a href="../APIPadelMatch/" class="md-nav__link">
        
  
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
                
                  


  <h1>APIPedidos</h1>

<div class="admonition note">
<p class="admonition-title">Description ApiPedidos</p>
<p>Las capacidades de la API de Pedidos abarcan diversas operaciones, que incluyen la creación de un pedido, la actualización de su estado, la adición de seguimiento, la anulación del pedido, la obtención de detalles de seguimiento y la recuperación de su origen.</p>
<p>Todos estos métodos requieren el uso de una API key, la cual será proporcionada por nuestro soporte, garantizando así la seguridad y la autorización adecuadas para acceder a estas funciones.</p>
</div>
<div class="admonition tip">
<p class="admonition-title">Casos de uso</p>
<p>1 - Si necesitas crear un pedido debrás saber que la pieza deberá estar disponible para su venta y la pieza tendrá que pertenecer a tu empresa, el código del pedido no se podrá repetir y al método de crear pedido le tendrás que pasar tu Apikey <code>Header</code>, tu idempresa <code>Header</code> y un json <code>Request Body</code>  el cúal deberá tener <a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#json-pedido">esta estructura</a>.</p>
<p>2 - Si deseas actualizar el estado de un pedido deberás pasar el código del pedido <code>Header</code>, el Apikey <code>Header</code>, el idempresa <code>Header</code> y el estado al cual deseamos actualizar el pedido también por <code>Header</code>.</p>
<p>3 - Si deseas anular un pedido tendrás que pasar el Apikey <code>Header</code>, el código del pedido <code>Header</code> y el idempresa <code>Header</code>.</p>
<p>4 - Si deseas agregar seguimiento a un pedido tendrás que pasar el Apikey <code>Header</code>, el código del pedido <code>Header</code>, el idempresa <code>Header</code> y la url de seguimiento que deseamos añadir <code>Header</code>.</p>
<p>5 - Si deseas recuperar pedido origen</p>
<p>6 - Si deseas Obtener el seguimiento</p>
</div>
<div class="admonition warning">
<p class="admonition-title">Que pasa si tengo la version 2</p>
<p>Estas desactualizado actualiza pls</p>
</div>
<div class="admonition warning">
<p class="admonition-title">Que pasa si tengo la version 3</p>
<p>Estas al dia eres un crack!</p>
</div>
<div class="admonition info">
<p class="admonition-title">RESPUESTAS API PEDIDOS V3</p>
<p>Genéricos:</p>
<ul>
<li>
<p>200 (OK)</p>
</li>
<li>
<p>400 (BadRequest + Mensaje de error)</p>
</li>
<li>
<p>500 (Error interno de la API - Mensaje de excepción)</p>
</li>
<li>
<p>503 (Error en el servicio - Mensaje por defecto)</p>
</li>
</ul>
</div>
<h4 id="enums">Enums:<a class="headerlink" href="#enums" title="Permanent link">&para;</a></h4>
<p class="annotate">Enum Estado --&gt; (1) &lt;--</p>
<p class="annotate">Enum EstadoPago --&gt; (2) &lt;--</p>
<p class="annotate">Enum FormaPago --&gt; (3) &lt;--</p>
<p class="annotate">Enum TipoDireccion --&gt; (4) &lt;--</p>
<p class="annotate">Enum TipoLinea --&gt; (5) &lt;--</p>
<ol>
<li>
<p><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">Estados</span><pre><span></span><code><a id="__codelineno-0-1" name="__codelineno-0-1" href="#__codelineno-0-1"></a><span class="p">{</span>
<a id="__codelineno-0-2" name="__codelineno-0-2" href="#__codelineno-0-2"></a><span class="w">  </span><span class="nt">&quot;Desconocido&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-0-3" name="__codelineno-0-3" href="#__codelineno-0-3"></a><span class="w">  </span><span class="nt">&quot;EnSeguimiento&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-0-4" name="__codelineno-0-4" href="#__codelineno-0-4"></a><span class="w">  </span><span class="nt">&quot;Reservado&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2</span><span class="p">,</span>
<a id="__codelineno-0-5" name="__codelineno-0-5" href="#__codelineno-0-5"></a><span class="w">  </span><span class="nt">&quot;Procesando&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">3</span><span class="p">,</span>
<a id="__codelineno-0-6" name="__codelineno-0-6" href="#__codelineno-0-6"></a><span class="w">  </span><span class="nt">&quot;EnReparto&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">4</span><span class="p">,</span>
<a id="__codelineno-0-7" name="__codelineno-0-7" href="#__codelineno-0-7"></a><span class="w">  </span><span class="nt">&quot;Entregado&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">5</span><span class="p">,</span>
<a id="__codelineno-0-8" name="__codelineno-0-8" href="#__codelineno-0-8"></a><span class="w">  </span><span class="nt">&quot;Anulado&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">6</span><span class="p">,</span>
<a id="__codelineno-0-9" name="__codelineno-0-9" href="#__codelineno-0-9"></a><span class="w">  </span><span class="nt">&quot;Devolucion&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">7</span><span class="p">,</span>
<a id="__codelineno-0-10" name="__codelineno-0-10" href="#__codelineno-0-10"></a><span class="w">  </span><span class="nt">&quot;DevolucionParcial&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">8</span>
<a id="__codelineno-0-11" name="__codelineno-0-11" href="#__codelineno-0-11"></a><span class="p">}</span>
</code></pre></div></p>
</li>
<li>
<p><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">EstadoPago</span><pre><span></span><code><a id="__codelineno-1-1" name="__codelineno-1-1" href="#__codelineno-1-1"></a><span class="p">{</span>
<a id="__codelineno-1-2" name="__codelineno-1-2" href="#__codelineno-1-2"></a><span class="w">  </span><span class="nt">&quot;Pendiente&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-1-3" name="__codelineno-1-3" href="#__codelineno-1-3"></a><span class="w">  </span><span class="nt">&quot;EsperaConfirmacion&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-1-4" name="__codelineno-1-4" href="#__codelineno-1-4"></a><span class="w">  </span><span class="nt">&quot;Pagado&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2</span><span class="p">,</span>
<a id="__codelineno-1-5" name="__codelineno-1-5" href="#__codelineno-1-5"></a><span class="w">  </span><span class="nt">&quot;Fallido&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">3</span><span class="p">,</span>
<a id="__codelineno-1-6" name="__codelineno-1-6" href="#__codelineno-1-6"></a><span class="w">  </span><span class="nt">&quot;PendienteDevolucion&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">4</span><span class="p">,</span>
<a id="__codelineno-1-7" name="__codelineno-1-7" href="#__codelineno-1-7"></a><span class="w">  </span><span class="nt">&quot;Devuelto&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">5</span>
<a id="__codelineno-1-8" name="__codelineno-1-8" href="#__codelineno-1-8"></a><span class="p">}</span>
</code></pre></div></p>
</li>
<li>
<p><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">FormaPago</span><pre><span></span><code><a id="__codelineno-2-1" name="__codelineno-2-1" href="#__codelineno-2-1"></a><span class="p">{</span>
<a id="__codelineno-2-2" name="__codelineno-2-2" href="#__codelineno-2-2"></a><span class="w">  </span><span class="nt">&quot;Desconocido&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-2-3" name="__codelineno-2-3" href="#__codelineno-2-3"></a><span class="w">  </span><span class="nt">&quot;Cuenta&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-2-4" name="__codelineno-2-4" href="#__codelineno-2-4"></a><span class="w">  </span><span class="nt">&quot;Tarjeta&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2</span><span class="p">,</span>
<a id="__codelineno-2-5" name="__codelineno-2-5" href="#__codelineno-2-5"></a><span class="w">  </span><span class="nt">&quot;Transferencia&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">3</span><span class="p">,</span>
<a id="__codelineno-2-6" name="__codelineno-2-6" href="#__codelineno-2-6"></a><span class="w">  </span><span class="nt">&quot;Paypal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">4</span><span class="p">,</span>
<a id="__codelineno-2-7" name="__codelineno-2-7" href="#__codelineno-2-7"></a><span class="w">  </span><span class="nt">&quot;Bizum&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">5</span><span class="p">,</span>
<a id="__codelineno-2-8" name="__codelineno-2-8" href="#__codelineno-2-8"></a><span class="w">  </span><span class="nt">&quot;Otros&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">6</span>
<a id="__codelineno-2-9" name="__codelineno-2-9" href="#__codelineno-2-9"></a><span class="p">}</span>
</code></pre></div></p>
</li>
<li>
<p><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">TipoDireccion</span><pre><span></span><code><a id="__codelineno-3-1" name="__codelineno-3-1" href="#__codelineno-3-1"></a><span class="p">{</span>
<a id="__codelineno-3-2" name="__codelineno-3-2" href="#__codelineno-3-2"></a><span class="w">    </span><span class="nt">&quot;Facturacion&quot;</span><span class="w"> </span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-3-3" name="__codelineno-3-3" href="#__codelineno-3-3"></a><span class="w">    </span><span class="nt">&quot;Envio&quot;</span><span class="w"> </span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-3-4" name="__codelineno-3-4" href="#__codelineno-3-4"></a><span class="w">    </span><span class="nt">&quot;OrigenEnvio&quot;</span><span class="w"> </span><span class="p">:</span><span class="w"> </span><span class="mi">2</span>
<a id="__codelineno-3-5" name="__codelineno-3-5" href="#__codelineno-3-5"></a><span class="p">}</span>
</code></pre></div></p>
</li>
<li>
<p><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">TipoLinea</span><pre><span></span><code><a id="__codelineno-4-1" name="__codelineno-4-1" href="#__codelineno-4-1"></a><span class="p">{</span>
<a id="__codelineno-4-2" name="__codelineno-4-2" href="#__codelineno-4-2"></a><span class="w">    </span><span class="nt">&quot;Libre&quot;</span><span class="w"> </span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-4-3" name="__codelineno-4-3" href="#__codelineno-4-3"></a><span class="w">    </span><span class="nt">&quot;Pieza&quot;</span><span class="w"> </span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-4-4" name="__codelineno-4-4" href="#__codelineno-4-4"></a><span class="w">    </span><span class="nt">&quot;Ruta&quot;</span><span class="w"> </span><span class="p">:</span><span class="w"> </span><span class="mi">2</span>
<a id="__codelineno-4-5" name="__codelineno-4-5" href="#__codelineno-4-5"></a><span class="p">}</span>
</code></pre></div></p>
</li>
</ol>
<h2 id="clases-apipedidos">Clases ApiPedidos<a class="headerlink" href="#clases-apipedidos" title="Permanent link">&para;</a></h2>
<div class="highlight"><span class="filename">Pedido</span><pre><span></span><code><a id="__codelineno-5-1" name="__codelineno-5-1" href="#__codelineno-5-1"></a>    public class Pedido {
<a id="__codelineno-5-2" name="__codelineno-5-2" href="#__codelineno-5-2"></a>    [Key]
<a id="__codelineno-5-3" name="__codelineno-5-3" href="#__codelineno-5-3"></a>    public int Id { get; set; }
<a id="__codelineno-5-4" name="__codelineno-5-4" href="#__codelineno-5-4"></a>    public int IdVendedor { get; set; }
<a id="__codelineno-5-5" name="__codelineno-5-5" href="#__codelineno-5-5"></a>    public string Proveedor { get; set; } = String.Empty;
<a id="__codelineno-5-6" name="__codelineno-5-6" href="#__codelineno-5-6"></a>    public string Canal { get; set; } = String.Empty;
<a id="__codelineno-5-7" name="__codelineno-5-7" href="#__codelineno-5-7"></a>    public string Codigo { get; set; } = String.Empty;
<a id="__codelineno-5-8" name="__codelineno-5-8" href="#__codelineno-5-8"></a>    public string IdCliente { get; set; } = String.Empty;
<a id="__codelineno-5-9" name="__codelineno-5-9" href="#__codelineno-5-9"></a>    public string? CodigoPago { get; set; }
<a id="__codelineno-5-10" name="__codelineno-5-10" href="#__codelineno-5-10"></a>    public string? CodigoCrvnet { get; set; }
<a id="__codelineno-5-11" name="__codelineno-5-11" href="#__codelineno-5-11"></a>    public string? SeguimientoUrl { get; set; }
<a id="__codelineno-5-12" name="__codelineno-5-12" href="#__codelineno-5-12"></a>    public Estado Estado { get; set; }
<a id="__codelineno-5-13" name="__codelineno-5-13" href="#__codelineno-5-13"></a>    public EstadoPago EstadoPago { get; set; }
<a id="__codelineno-5-14" name="__codelineno-5-14" href="#__codelineno-5-14"></a>    public FormaPago FormaPago { get; set; }
<a id="__codelineno-5-15" name="__codelineno-5-15" href="#__codelineno-5-15"></a>    public decimal Base { get; set; }
<a id="__codelineno-5-16" name="__codelineno-5-16" href="#__codelineno-5-16"></a>    public decimal PorcentajeDescuento { get; set; }
<a id="__codelineno-5-17" name="__codelineno-5-17" href="#__codelineno-5-17"></a>    public decimal Descuento { get; set; }
<a id="__codelineno-5-18" name="__codelineno-5-18" href="#__codelineno-5-18"></a>    public decimal Subtotal { get; set; }
<a id="__codelineno-5-19" name="__codelineno-5-19" href="#__codelineno-5-19"></a>    public decimal PorcentajeIva { get; set; }
<a id="__codelineno-5-20" name="__codelineno-5-20" href="#__codelineno-5-20"></a>    public decimal Iva { get; set; }
<a id="__codelineno-5-21" name="__codelineno-5-21" href="#__codelineno-5-21"></a>    public decimal Total { get; set; }
<a id="__codelineno-5-22" name="__codelineno-5-22" href="#__codelineno-5-22"></a>    public DateTime FechaMod { get; set; }
<a id="__codelineno-5-23" name="__codelineno-5-23" href="#__codelineno-5-23"></a>    public DateTime FechaIn { get; set; }
<a id="__codelineno-5-24" name="__codelineno-5-24" href="#__codelineno-5-24"></a>    public string? Observaciones { get; set; }
<a id="__codelineno-5-25" name="__codelineno-5-25" href="#__codelineno-5-25"></a>    public int IdFacturacion { get; set; }
<a id="__codelineno-5-26" name="__codelineno-5-26" href="#__codelineno-5-26"></a>    public int? IdEnvio { get; set; }
<a id="__codelineno-5-27" name="__codelineno-5-27" href="#__codelineno-5-27"></a>    public int IdOrigenEnvio { get; set; }
<a id="__codelineno-5-28" name="__codelineno-5-28" href="#__codelineno-5-28"></a>    public bool RecogidaTienda { get; set; }
<a id="__codelineno-5-29" name="__codelineno-5-29" href="#__codelineno-5-29"></a>    public int EstadoAccion { get; set; }
<a id="__codelineno-5-30" name="__codelineno-5-30" href="#__codelineno-5-30"></a>    public string? Informacion { get; set; }
<a id="__codelineno-5-31" name="__codelineno-5-31" href="#__codelineno-5-31"></a>    public int IncidenciasTotal { get; set; }
<a id="__codelineno-5-32" name="__codelineno-5-32" href="#__codelineno-5-32"></a>    public int IncidenciasAbiertas { get; set; }
<a id="__codelineno-5-33" name="__codelineno-5-33" href="#__codelineno-5-33"></a>    public bool Contabilizado { get; set; } = false;
<a id="__codelineno-5-34" name="__codelineno-5-34" href="#__codelineno-5-34"></a>    public string EstadoCRVNet { get; set; } = String.Empty;
<a id="__codelineno-5-35" name="__codelineno-5-35" href="#__codelineno-5-35"></a>
<a id="__codelineno-5-36" name="__codelineno-5-36" href="#__codelineno-5-36"></a>    public virtual Direccion Facturacion { get; set; }
<a id="__codelineno-5-37" name="__codelineno-5-37" href="#__codelineno-5-37"></a>    public virtual Direccion? Envio { get; set; }
<a id="__codelineno-5-38" name="__codelineno-5-38" href="#__codelineno-5-38"></a>    public virtual Direccion OrigenEnvio { get; set; }
<a id="__codelineno-5-39" name="__codelineno-5-39" href="#__codelineno-5-39"></a>    public virtual ICollection&lt;Linea&gt; Lineas { get; set; }
<a id="__codelineno-5-40" name="__codelineno-5-40" href="#__codelineno-5-40"></a>    public virtual ICollection&lt;Documento&gt; Documentos { get; set; }
<a id="__codelineno-5-41" name="__codelineno-5-41" href="#__codelineno-5-41"></a>    public virtual ICollection&lt;Incidencia&gt; Incidencias { get; set; }
<a id="__codelineno-5-42" name="__codelineno-5-42" href="#__codelineno-5-42"></a>    }
<a id="__codelineno-5-43" name="__codelineno-5-43" href="#__codelineno-5-43"></a>    public enum Estado {Desconocido,EnSeguimiento,Reservado,Procesando,EnReparto,Entregado,Anulado,Devolucion,DevolucionParcial}
<a id="__codelineno-5-44" name="__codelineno-5-44" href="#__codelineno-5-44"></a>    public enum EstadoPago {Pendiente,EsperaConfirmacion,Pagado,Fallido,PendienteDevolucion,Devuelto}
<a id="__codelineno-5-45" name="__codelineno-5-45" href="#__codelineno-5-45"></a>    public enum FormaPago {Desconocido,Cuenta,Tarjeta,Transferencia,Paypal,Bizum,Otros}
</code></pre></div>
<p><div class="highlight"><span class="filename">Direccion</span><pre><span></span><code><a id="__codelineno-6-1" name="__codelineno-6-1" href="#__codelineno-6-1"></a>    public class Direccion{
<a id="__codelineno-6-2" name="__codelineno-6-2" href="#__codelineno-6-2"></a>        [Key]
<a id="__codelineno-6-3" name="__codelineno-6-3" href="#__codelineno-6-3"></a>        public int Id { get; set; }
<a id="__codelineno-6-4" name="__codelineno-6-4" href="#__codelineno-6-4"></a>        public int IdVendedor { get; set; }
<a id="__codelineno-6-5" name="__codelineno-6-5" href="#__codelineno-6-5"></a>        public string? Descripcion { get; set; }
<a id="__codelineno-6-6" name="__codelineno-6-6" href="#__codelineno-6-6"></a>        public TipoDireccion Tipo { get; set; }
<a id="__codelineno-6-7" name="__codelineno-6-7" href="#__codelineno-6-7"></a>        public string NifCif { get; set; } = String.Empty;
<a id="__codelineno-6-8" name="__codelineno-6-8" href="#__codelineno-6-8"></a>        public string NombreComercial { get; set; } = String.Empty;
<a id="__codelineno-6-9" name="__codelineno-6-9" href="#__codelineno-6-9"></a>        public string RazonSocial { get; set; } = String.Empty;
<a id="__codelineno-6-10" name="__codelineno-6-10" href="#__codelineno-6-10"></a>        public string Domicilio { get; set; } = String.Empty;
<a id="__codelineno-6-11" name="__codelineno-6-11" href="#__codelineno-6-11"></a>        public string? CodigoProvincia { get; set; }
<a id="__codelineno-6-12" name="__codelineno-6-12" href="#__codelineno-6-12"></a>        public string Provincia { get; set; } = String.Empty;
<a id="__codelineno-6-13" name="__codelineno-6-13" href="#__codelineno-6-13"></a>        public string? CodigoPoblacion { get; set; }
<a id="__codelineno-6-14" name="__codelineno-6-14" href="#__codelineno-6-14"></a>        public string Poblacion { get; set; } = String.Empty;
<a id="__codelineno-6-15" name="__codelineno-6-15" href="#__codelineno-6-15"></a>        public string CodigoPostal { get; set; } = String.Empty;
<a id="__codelineno-6-16" name="__codelineno-6-16" href="#__codelineno-6-16"></a>        public string? CodigoPais { get; set; }
<a id="__codelineno-6-17" name="__codelineno-6-17" href="#__codelineno-6-17"></a>        public string Pais { get; set; } = String.Empty;
<a id="__codelineno-6-18" name="__codelineno-6-18" href="#__codelineno-6-18"></a>        public string Email { get; set; } = String.Empty;
<a id="__codelineno-6-19" name="__codelineno-6-19" href="#__codelineno-6-19"></a>        public string Telefono1 { get; set; } = String.Empty;
<a id="__codelineno-6-20" name="__codelineno-6-20" href="#__codelineno-6-20"></a>        public string? Telefono2 { get; set; }
<a id="__codelineno-6-21" name="__codelineno-6-21" href="#__codelineno-6-21"></a>        public string? Fax { get; set; }
<a id="__codelineno-6-22" name="__codelineno-6-22" href="#__codelineno-6-22"></a>        public string? Observaciones { get; set; }
<a id="__codelineno-6-23" name="__codelineno-6-23" href="#__codelineno-6-23"></a>    }
<a id="__codelineno-6-24" name="__codelineno-6-24" href="#__codelineno-6-24"></a>    public enum TipoDireccion {Facturacion,Envio,OrigenEnvio}
</code></pre></div>
<div class="highlight"><span class="filename">Linea</span><pre><span></span><code><a id="__codelineno-7-1" name="__codelineno-7-1" href="#__codelineno-7-1"></a>    public class Linea{
<a id="__codelineno-7-2" name="__codelineno-7-2" href="#__codelineno-7-2"></a>        [Key]
<a id="__codelineno-7-3" name="__codelineno-7-3" href="#__codelineno-7-3"></a>        public int Id { get; set; }
<a id="__codelineno-7-4" name="__codelineno-7-4" href="#__codelineno-7-4"></a>        public int IdVendedor { get; set; }
<a id="__codelineno-7-5" name="__codelineno-7-5" href="#__codelineno-7-5"></a>        public int IdPedido { get; set; }
<a id="__codelineno-7-6" name="__codelineno-7-6" href="#__codelineno-7-6"></a>        public string? Referencia { get; set; }
<a id="__codelineno-7-7" name="__codelineno-7-7" href="#__codelineno-7-7"></a>        public string Concepto { get; set; } = String.Empty;
<a id="__codelineno-7-8" name="__codelineno-7-8" href="#__codelineno-7-8"></a>        public int Cantidad { get; set; }
<a id="__codelineno-7-9" name="__codelineno-7-9" href="#__codelineno-7-9"></a>        public decimal Precio { get; set; }
<a id="__codelineno-7-10" name="__codelineno-7-10" href="#__codelineno-7-10"></a>        public decimal Base { get; set; }
<a id="__codelineno-7-11" name="__codelineno-7-11" href="#__codelineno-7-11"></a>        public decimal PorcentajeDescuento { get; set; }
<a id="__codelineno-7-12" name="__codelineno-7-12" href="#__codelineno-7-12"></a>        public decimal Descuento { get; set; }
<a id="__codelineno-7-13" name="__codelineno-7-13" href="#__codelineno-7-13"></a>        public decimal Subtotal { get; set; }
<a id="__codelineno-7-14" name="__codelineno-7-14" href="#__codelineno-7-14"></a>        public TipoLinea Tipo { get; set; }
<a id="__codelineno-7-15" name="__codelineno-7-15" href="#__codelineno-7-15"></a>
<a id="__codelineno-7-16" name="__codelineno-7-16" href="#__codelineno-7-16"></a>        public virtual Pedido Pedido { get; set; }
<a id="__codelineno-7-17" name="__codelineno-7-17" href="#__codelineno-7-17"></a>    }
<a id="__codelineno-7-18" name="__codelineno-7-18" href="#__codelineno-7-18"></a>    public enum TipoLinea {Libre,Pieza,Ruta}
</code></pre></div>
<div class="highlight"><span class="filename">Incidencia</span><pre><span></span><code><a id="__codelineno-8-1" name="__codelineno-8-1" href="#__codelineno-8-1"></a>    public class Incidencia{
<a id="__codelineno-8-2" name="__codelineno-8-2" href="#__codelineno-8-2"></a>        [Key]
<a id="__codelineno-8-3" name="__codelineno-8-3" href="#__codelineno-8-3"></a>        public int Id { get; set; }
<a id="__codelineno-8-4" name="__codelineno-8-4" href="#__codelineno-8-4"></a>        public int IdVendedor { get; set; }
<a id="__codelineno-8-5" name="__codelineno-8-5" href="#__codelineno-8-5"></a>        public int IdPedido { get; set; }
<a id="__codelineno-8-6" name="__codelineno-8-6" href="#__codelineno-8-6"></a>        public string IdCliente { get; set; } = String.Empty;
<a id="__codelineno-8-7" name="__codelineno-8-7" href="#__codelineno-8-7"></a>        public string Observaciones { get; set; } = String.Empty;
<a id="__codelineno-8-8" name="__codelineno-8-8" href="#__codelineno-8-8"></a>        public TipoIncidencia Tipo { get; set; }
<a id="__codelineno-8-9" name="__codelineno-8-9" href="#__codelineno-8-9"></a>        public EstadoIncidencia Estado { get; set; }
<a id="__codelineno-8-10" name="__codelineno-8-10" href="#__codelineno-8-10"></a>        public string Titulo { get; set; } = String.Empty;
<a id="__codelineno-8-11" name="__codelineno-8-11" href="#__codelineno-8-11"></a>        public DateTime FechaIn { get; set; }
<a id="__codelineno-8-12" name="__codelineno-8-12" href="#__codelineno-8-12"></a>        public DateTime FechaMod { get; set; }
<a id="__codelineno-8-13" name="__codelineno-8-13" href="#__codelineno-8-13"></a>
<a id="__codelineno-8-14" name="__codelineno-8-14" href="#__codelineno-8-14"></a>        public virtual Pedido Pedido { get; set; }
<a id="__codelineno-8-15" name="__codelineno-8-15" href="#__codelineno-8-15"></a>    }
<a id="__codelineno-8-16" name="__codelineno-8-16" href="#__codelineno-8-16"></a>    public enum TipoIncidencia { PedidoConRetraso, SolicitudCancelacion, SolicitudFactura, PedidoDefectuoso, General, IntermediacionSideo, IncidenciaCRVNet }
<a id="__codelineno-8-17" name="__codelineno-8-17" href="#__codelineno-8-17"></a>    public enum EstadoIncidencia { Pendiente, Seguimiento, Resuelto }
</code></pre></div>
<div class="highlight"><span class="filename">Documento</span><pre><span></span><code><a id="__codelineno-9-1" name="__codelineno-9-1" href="#__codelineno-9-1"></a>    public class Documento{
<a id="__codelineno-9-2" name="__codelineno-9-2" href="#__codelineno-9-2"></a>        [Key]
<a id="__codelineno-9-3" name="__codelineno-9-3" href="#__codelineno-9-3"></a>        public int Id { get; set; }
<a id="__codelineno-9-4" name="__codelineno-9-4" href="#__codelineno-9-4"></a>        public int IdEmpresa { get; set; }
<a id="__codelineno-9-5" name="__codelineno-9-5" href="#__codelineno-9-5"></a>        public int IdPedido { get; set; }
<a id="__codelineno-9-6" name="__codelineno-9-6" href="#__codelineno-9-6"></a>        public string Nombre { get; set; } = String.Empty;
<a id="__codelineno-9-7" name="__codelineno-9-7" href="#__codelineno-9-7"></a>        public TipoDocumento Tipo { get; set; }
<a id="__codelineno-9-8" name="__codelineno-9-8" href="#__codelineno-9-8"></a>        public string? Observaciones { get; set; }
<a id="__codelineno-9-9" name="__codelineno-9-9" href="#__codelineno-9-9"></a>
<a id="__codelineno-9-10" name="__codelineno-9-10" href="#__codelineno-9-10"></a>        public virtual Pedido Pedido { get; set; }
<a id="__codelineno-9-11" name="__codelineno-9-11" href="#__codelineno-9-11"></a>    }
<a id="__codelineno-9-12" name="__codelineno-9-12" href="#__codelineno-9-12"></a>    public enum TipoDocumento {Factura,Albaran,Devolucion,Otro}
</code></pre></div>
<div class="highlight"><span class="filename">ViewPedidos</span><pre><span></span><code><a id="__codelineno-10-1" name="__codelineno-10-1" href="#__codelineno-10-1"></a>    public class ViewPedidos{
<a id="__codelineno-10-2" name="__codelineno-10-2" href="#__codelineno-10-2"></a>        public int Id { get; set; }
<a id="__codelineno-10-3" name="__codelineno-10-3" href="#__codelineno-10-3"></a>        public int IdVendedor { get; set; }
<a id="__codelineno-10-4" name="__codelineno-10-4" href="#__codelineno-10-4"></a>        public string Codigo { get; set; } = String.Empty;
<a id="__codelineno-10-5" name="__codelineno-10-5" href="#__codelineno-10-5"></a>        public string? CodigoPago { get; set; }
<a id="__codelineno-10-6" name="__codelineno-10-6" href="#__codelineno-10-6"></a>        public string IdCliente { get; set; } = String.Empty;
<a id="__codelineno-10-7" name="__codelineno-10-7" href="#__codelineno-10-7"></a>        public string? SeguimientoUrl { get; set; }
<a id="__codelineno-10-8" name="__codelineno-10-8" href="#__codelineno-10-8"></a>        public EstadoPago EstadoPago { get; set; }
<a id="__codelineno-10-9" name="__codelineno-10-9" href="#__codelineno-10-9"></a>        public FormaPago FormaPago { get; set; }
<a id="__codelineno-10-10" name="__codelineno-10-10" href="#__codelineno-10-10"></a>        public decimal Base { get; set; }
<a id="__codelineno-10-11" name="__codelineno-10-11" href="#__codelineno-10-11"></a>        public decimal PorcentajeDescuento { get; set; }
<a id="__codelineno-10-12" name="__codelineno-10-12" href="#__codelineno-10-12"></a>        public decimal Descuento { get; set; }
<a id="__codelineno-10-13" name="__codelineno-10-13" href="#__codelineno-10-13"></a>        public decimal Subtotal { get; set; }
<a id="__codelineno-10-14" name="__codelineno-10-14" href="#__codelineno-10-14"></a>        public decimal PorcentajeIva { get; set; }
<a id="__codelineno-10-15" name="__codelineno-10-15" href="#__codelineno-10-15"></a>        public decimal Iva { get; set; }
<a id="__codelineno-10-16" name="__codelineno-10-16" href="#__codelineno-10-16"></a>        public decimal Total { get; set; }
<a id="__codelineno-10-17" name="__codelineno-10-17" href="#__codelineno-10-17"></a>        public string? Observaciones { get; set; }
<a id="__codelineno-10-18" name="__codelineno-10-18" href="#__codelineno-10-18"></a>        public int IdFacturacion { get; set; }
<a id="__codelineno-10-19" name="__codelineno-10-19" href="#__codelineno-10-19"></a>        public int? IdEnvio { get; set; }
<a id="__codelineno-10-20" name="__codelineno-10-20" href="#__codelineno-10-20"></a>        public int IdOrigenEnvio { get; set; }
<a id="__codelineno-10-21" name="__codelineno-10-21" href="#__codelineno-10-21"></a>        public bool RecogidaTienda { get; set; }
<a id="__codelineno-10-22" name="__codelineno-10-22" href="#__codelineno-10-22"></a>
<a id="__codelineno-10-23" name="__codelineno-10-23" href="#__codelineno-10-23"></a>        public virtual Direccion Facturacion { get; set; }
<a id="__codelineno-10-24" name="__codelineno-10-24" href="#__codelineno-10-24"></a>        public virtual Direccion? Envio { get; set; }
<a id="__codelineno-10-25" name="__codelineno-10-25" href="#__codelineno-10-25"></a>        public virtual Direccion OrigenEnvio { get; set; }
<a id="__codelineno-10-26" name="__codelineno-10-26" href="#__codelineno-10-26"></a>        public virtual ICollection&lt;Linea&gt; Lineas { get; set; }
<a id="__codelineno-10-27" name="__codelineno-10-27" href="#__codelineno-10-27"></a>        public virtual ICollection&lt;Documento&gt; Documentos { get; set; }
<a id="__codelineno-10-28" name="__codelineno-10-28" href="#__codelineno-10-28"></a>    }
</code></pre></div></p>
<h2 id="metodos-apipedidos">Metodos ApiPedidos<a class="headerlink" href="#metodos-apipedidos" title="Permanent link">&para;</a></h2>
<table>
<thead>
<tr>
<th>º</th>
<th>Endpoint Name</th>
<th>Endpoint type</th>
</tr>
</thead>
<tbody>
<tr>
<td>1</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#crearpedido">CrearPedido</a></td>
<td>Post</td>
</tr>
<tr>
<td>2</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#actualizarestado">ActualizarEstado</a></td>
<td>Post</td>
</tr>
<tr>
<td>3</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#agregarseguimiento">AgregarSeguimiento</a></td>
<td>Post</td>
</tr>
<tr>
<td>4</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#anularpedido">AnularPedido</a></td>
<td>Post</td>
</tr>
<tr>
<td>5</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#recuperarpedidoorigen">RecuperarPedidoOrigen</a></td>
<td>Get</td>
</tr>
<tr>
<td>6</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#obtenerseguimiento">ObtenerSeguimiento</a></td>
<td>Get</td>
</tr>
</tbody>
</table>
<h3 id="crearpedido"><strong>CrearPedido</strong><a class="headerlink" href="#crearpedido" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>CrearPedido</mark>} permite crear un pedidos sobre piezas que se encuentren sin reservar y disponibles.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Pedidos/CrearPedido</p>
</div>
<p><strong>Parámetros de CrearPedido:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>exeemplo</th>
<th></th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>apikey</code></td>
<td>Header</td>
<td>(MS-5iq5RTxT6EW1BBqTHmGjdK6ZwhQ7C7v9S)</td>
<td>Required</td>
<td>string</td>
<td>Apikey Canal.</td>
</tr>
<tr>
<td><code>idempresa</code></td>
<td>Header</td>
<td>(1460)</td>
<td>Required</td>
<td>int32</td>
<td>Identificador local de la empresa.</td>
</tr>
<tr>
<td><code>JSON BODY</code></td>
<td>BODY</td>
<td>(<a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#json-pedido">JSON EXAMPLE</a>)</td>
<td>Required</td>
<td>json</td>
<td>introducir JSON pedido</td>
</tr>
</tbody>
</table>
<h6 id="json-pedido">Json pedido<a class="headerlink" href="#json-pedido" title="Permanent link">&para;</a></h6>
<div class="highlight"><span class="filename">Pedido</span><pre><span></span><code><a id="__codelineno-11-1" name="__codelineno-11-1" href="#__codelineno-11-1"></a><span class="p">{</span>
<a id="__codelineno-11-2" name="__codelineno-11-2" href="#__codelineno-11-2"></a><span class="w">    </span><span class="nt">&quot;Pedido&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-11-3" name="__codelineno-11-3" href="#__codelineno-11-3"></a><span class="w">        </span><span class="nt">&quot;Observaciones&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;No especificado&quot;</span><span class="p">,</span>
<a id="__codelineno-11-4" name="__codelineno-11-4" href="#__codelineno-11-4"></a><span class="w">        </span><span class="nt">&quot;IdCliente&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;yvan troentlin&quot;</span><span class="p">,</span>
<a id="__codelineno-11-5" name="__codelineno-11-5" href="#__codelineno-11-5"></a><span class="w">        </span><span class="nt">&quot;Codigo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;OVOKO_1460_1405978&quot;</span><span class="p">,</span>
<a id="__codelineno-11-6" name="__codelineno-11-6" href="#__codelineno-11-6"></a><span class="w">        </span><span class="nt">&quot;IdVendedor&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-11-7" name="__codelineno-11-7" href="#__codelineno-11-7"></a><span class="w">        </span><span class="nt">&quot;SeguimientoUrl&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;https://poland.rrr.lt/order/view_order/1405978&quot;</span><span class="p">,</span>
<a id="__codelineno-11-8" name="__codelineno-11-8" href="#__codelineno-11-8"></a><span class="w">        </span><span class="nt">&quot;EstadoPago&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2</span><span class="p">,</span>
<a id="__codelineno-11-9" name="__codelineno-11-9" href="#__codelineno-11-9"></a><span class="w">        </span><span class="nt">&quot;FormaPago&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2</span><span class="p">,</span>
<a id="__codelineno-11-10" name="__codelineno-11-10" href="#__codelineno-11-10"></a><span class="w">        </span><span class="nt">&quot;RecogidaTienda&quot;</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="p">,</span>
<a id="__codelineno-11-11" name="__codelineno-11-11" href="#__codelineno-11-11"></a><span class="w">        </span><span class="nt">&quot;PorcentajeIva&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-11-12" name="__codelineno-11-12" href="#__codelineno-11-12"></a><span class="w">        </span><span class="nt">&quot;Base&quot;</span><span class="p">:</span><span class="w"> </span><span class="mf">57.58</span><span class="p">,</span>
<a id="__codelineno-11-13" name="__codelineno-11-13" href="#__codelineno-11-13"></a><span class="w">        </span><span class="nt">&quot;PorcentajeDescuento&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-11-14" name="__codelineno-11-14" href="#__codelineno-11-14"></a><span class="w">        </span><span class="nt">&quot;SubTotal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mf">57.58</span><span class="p">,</span>
<a id="__codelineno-11-15" name="__codelineno-11-15" href="#__codelineno-11-15"></a><span class="w">        </span><span class="nt">&quot;Descuento&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-11-16" name="__codelineno-11-16" href="#__codelineno-11-16"></a><span class="w">        </span><span class="nt">&quot;Total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mf">57.58</span><span class="p">,</span>
<a id="__codelineno-11-17" name="__codelineno-11-17" href="#__codelineno-11-17"></a><span class="w">        </span><span class="nt">&quot;Iva&quot;</span><span class="p">:</span><span class="w"> </span><span class="mf">0.0</span>
<a id="__codelineno-11-18" name="__codelineno-11-18" href="#__codelineno-11-18"></a><span class="w">    </span><span class="p">},</span>
<a id="__codelineno-11-19" name="__codelineno-11-19" href="#__codelineno-11-19"></a><span class="w">    </span><span class="nt">&quot;Cliente&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-11-20" name="__codelineno-11-20" href="#__codelineno-11-20"></a><span class="w">        </span><span class="nt">&quot;Descripcion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Descripcion Ovoko Vacia&quot;</span><span class="p">,</span>
<a id="__codelineno-11-21" name="__codelineno-11-21" href="#__codelineno-11-21"></a><span class="w">        </span><span class="nt">&quot;Tipo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-11-22" name="__codelineno-11-22" href="#__codelineno-11-22"></a><span class="w">        </span><span class="nt">&quot;NombreComercial&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;yvan troentlin&quot;</span><span class="p">,</span>
<a id="__codelineno-11-23" name="__codelineno-11-23" href="#__codelineno-11-23"></a><span class="w">        </span><span class="nt">&quot;RazonSocial&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;yvan troentlin&quot;</span><span class="p">,</span>
<a id="__codelineno-11-24" name="__codelineno-11-24" href="#__codelineno-11-24"></a><span class="w">        </span><span class="nt">&quot;Domicilio&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;8 Boulevard Bel air&quot;</span><span class="p">,</span>
<a id="__codelineno-11-25" name="__codelineno-11-25" href="#__codelineno-11-25"></a><span class="w">        </span><span class="nt">&quot;CodigoPostal&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;No especificado&quot;</span><span class="p">,</span>
<a id="__codelineno-11-26" name="__codelineno-11-26" href="#__codelineno-11-26"></a><span class="w">        </span><span class="nt">&quot;Poblacion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Marseille&quot;</span><span class="p">,</span>
<a id="__codelineno-11-27" name="__codelineno-11-27" href="#__codelineno-11-27"></a><span class="w">        </span><span class="nt">&quot;Provincia&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Marseille&quot;</span><span class="p">,</span>
<a id="__codelineno-11-28" name="__codelineno-11-28" href="#__codelineno-11-28"></a><span class="w">        </span><span class="nt">&quot;Telefono1&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;+33652565108&quot;</span><span class="p">,</span>
<a id="__codelineno-11-29" name="__codelineno-11-29" href="#__codelineno-11-29"></a><span class="w">        </span><span class="nt">&quot;Telefono2&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;+33652565108&quot;</span><span class="p">,</span>
<a id="__codelineno-11-30" name="__codelineno-11-30" href="#__codelineno-11-30"></a><span class="w">        </span><span class="nt">&quot;Fax&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;+33652565108&quot;</span><span class="p">,</span>
<a id="__codelineno-11-31" name="__codelineno-11-31" href="#__codelineno-11-31"></a><span class="w">        </span><span class="nt">&quot;Email&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;yvan.troentlin@gmail.com&quot;</span><span class="p">,</span>
<a id="__codelineno-11-32" name="__codelineno-11-32" href="#__codelineno-11-32"></a><span class="w">        </span><span class="nt">&quot;Pais&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;FR&quot;</span><span class="p">,</span>
<a id="__codelineno-11-33" name="__codelineno-11-33" href="#__codelineno-11-33"></a><span class="w">        </span><span class="nt">&quot;Observaciones&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;No especificado&quot;</span><span class="p">,</span>
<a id="__codelineno-11-34" name="__codelineno-11-34" href="#__codelineno-11-34"></a><span class="w">        </span><span class="nt">&quot;NifCif&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;No especificado&quot;</span>
<a id="__codelineno-11-35" name="__codelineno-11-35" href="#__codelineno-11-35"></a><span class="w">    </span><span class="p">},</span>
<a id="__codelineno-11-36" name="__codelineno-11-36" href="#__codelineno-11-36"></a><span class="w">    </span><span class="nt">&quot;Envio&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-11-37" name="__codelineno-11-37" href="#__codelineno-11-37"></a><span class="w">        </span><span class="nt">&quot;Descripcion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;No especificado&quot;</span><span class="p">,</span>
<a id="__codelineno-11-38" name="__codelineno-11-38" href="#__codelineno-11-38"></a><span class="w">        </span><span class="nt">&quot;Tipo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-11-39" name="__codelineno-11-39" href="#__codelineno-11-39"></a><span class="w">        </span><span class="nt">&quot;NombreComercial&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;yvan troentlin&quot;</span><span class="p">,</span>
<a id="__codelineno-11-40" name="__codelineno-11-40" href="#__codelineno-11-40"></a><span class="w">        </span><span class="nt">&quot;RazonSocial&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;yvan troentlin&quot;</span><span class="p">,</span>
<a id="__codelineno-11-41" name="__codelineno-11-41" href="#__codelineno-11-41"></a><span class="w">        </span><span class="nt">&quot;Domicilio&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;8 Boulevard Bel air&quot;</span><span class="p">,</span>
<a id="__codelineno-11-42" name="__codelineno-11-42" href="#__codelineno-11-42"></a><span class="w">        </span><span class="nt">&quot;CodigoPostal&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;No especificado&quot;</span><span class="p">,</span>
<a id="__codelineno-11-43" name="__codelineno-11-43" href="#__codelineno-11-43"></a><span class="w">        </span><span class="nt">&quot;Poblacion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Marseille&quot;</span><span class="p">,</span>
<a id="__codelineno-11-44" name="__codelineno-11-44" href="#__codelineno-11-44"></a><span class="w">        </span><span class="nt">&quot;Provincia&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-11-45" name="__codelineno-11-45" href="#__codelineno-11-45"></a><span class="w">        </span><span class="nt">&quot;Telefono1&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;+33652565108&quot;</span><span class="p">,</span>
<a id="__codelineno-11-46" name="__codelineno-11-46" href="#__codelineno-11-46"></a><span class="w">        </span><span class="nt">&quot;Telefono2&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;+33652565108&quot;</span><span class="p">,</span>
<a id="__codelineno-11-47" name="__codelineno-11-47" href="#__codelineno-11-47"></a><span class="w">        </span><span class="nt">&quot;Fax&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;+33652565108&quot;</span><span class="p">,</span>
<a id="__codelineno-11-48" name="__codelineno-11-48" href="#__codelineno-11-48"></a><span class="w">        </span><span class="nt">&quot;Email&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;yvan.troentlin@gmail.com&quot;</span><span class="p">,</span>
<a id="__codelineno-11-49" name="__codelineno-11-49" href="#__codelineno-11-49"></a><span class="w">        </span><span class="nt">&quot;Pais&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;FR&quot;</span><span class="p">,</span>
<a id="__codelineno-11-50" name="__codelineno-11-50" href="#__codelineno-11-50"></a><span class="w">        </span><span class="nt">&quot;Observaciones&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;No especificado&quot;</span><span class="p">,</span>
<a id="__codelineno-11-51" name="__codelineno-11-51" href="#__codelineno-11-51"></a><span class="w">        </span><span class="nt">&quot;NifCif&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;No especificado&quot;</span>
<a id="__codelineno-11-52" name="__codelineno-11-52" href="#__codelineno-11-52"></a><span class="w">    </span><span class="p">},</span>
<a id="__codelineno-11-53" name="__codelineno-11-53" href="#__codelineno-11-53"></a><span class="w">    </span><span class="nt">&quot;Lineas&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-11-54" name="__codelineno-11-54" href="#__codelineno-11-54"></a><span class="w">        </span><span class="p">{</span>
<a id="__codelineno-11-55" name="__codelineno-11-55" href="#__codelineno-11-55"></a><span class="w">            </span><span class="nt">&quot;Tipo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-11-56" name="__codelineno-11-56" href="#__codelineno-11-56"></a><span class="w">            </span><span class="nt">&quot;Referencia&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;215201&quot;</span><span class="p">,</span>
<a id="__codelineno-11-57" name="__codelineno-11-57" href="#__codelineno-11-57"></a><span class="w">            </span><span class="nt">&quot;Cantidad&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-11-58" name="__codelineno-11-58" href="#__codelineno-11-58"></a><span class="w">            </span><span class="nt">&quot;Concepto&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Sterownik / Moduł ECU&quot;</span><span class="p">,</span>
<a id="__codelineno-11-59" name="__codelineno-11-59" href="#__codelineno-11-59"></a><span class="w">            </span><span class="nt">&quot;Precio&quot;</span><span class="p">:</span><span class="w"> </span><span class="mf">2.62</span><span class="p">,</span>
<a id="__codelineno-11-60" name="__codelineno-11-60" href="#__codelineno-11-60"></a><span class="w">            </span><span class="nt">&quot;Base&quot;</span><span class="p">:</span><span class="w"> </span><span class="mf">2.62</span><span class="p">,</span>
<a id="__codelineno-11-61" name="__codelineno-11-61" href="#__codelineno-11-61"></a><span class="w">            </span><span class="nt">&quot;SubTotal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mf">2.62</span><span class="p">,</span>
<a id="__codelineno-11-62" name="__codelineno-11-62" href="#__codelineno-11-62"></a><span class="w">            </span><span class="nt">&quot;PorcentajeDescuento&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-11-63" name="__codelineno-11-63" href="#__codelineno-11-63"></a><span class="w">            </span><span class="nt">&quot;Descuento&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-11-64" name="__codelineno-11-64" href="#__codelineno-11-64"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-11-65" name="__codelineno-11-65" href="#__codelineno-11-65"></a><span class="w">    </span><span class="p">]</span>
<a id="__codelineno-11-66" name="__codelineno-11-66" href="#__codelineno-11-66"></a><span class="p">}</span>
</code></pre></div>
<h6 id="explicacion-pedido">Explicación Pedido<a class="headerlink" href="#explicacion-pedido" title="Permanent link">&para;</a></h6>
<table>
<thead>
<tr>
<th>Atributo</th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>Observaciones</code></td>
<td>string</td>
<td>Observaciones relacionadas con el pedido.</td>
</tr>
<tr>
<td><code>IdCliente</code></td>
<td>string</td>
<td>Identificación única del cliente.</td>
</tr>
<tr>
<td><code>Codigo</code></td>
<td>string</td>
<td>Código único del pedido.</td>
</tr>
<tr>
<td><code>IdVendedor</code></td>
<td>int</td>
<td>Identificación única del vendedor asociado al pedido.</td>
</tr>
<tr>
<td><code>SeguimientoUrl</code></td>
<td>string</td>
<td>URL de seguimiento del pedido.</td>
</tr>
<tr>
<td><code>EstadoPago</code></td>
<td>int</td>
<td>Estado del pago del pedido.</td>
</tr>
<tr>
<td><code>FormaPago</code></td>
<td>int</td>
<td>Forma de pago utilizada en el pedido.</td>
</tr>
<tr>
<td><code>RecogidaTienda</code></td>
<td>boolean</td>
<td>Indica si la recogida del pedido se realizará en la tienda.</td>
</tr>
<tr>
<td><code>PorcentajeIva</code></td>
<td>float</td>
<td>Porcentaje de IVA aplicado al pedido.</td>
</tr>
<tr>
<td><code>Base</code></td>
<td>float</td>
<td>Monto base del pedido antes de impuestos y descuentos.</td>
</tr>
<tr>
<td><code>PorcentajeDescuento</code></td>
<td>float</td>
<td>Porcentaje de descuento aplicado al pedido.</td>
</tr>
<tr>
<td><code>SubTotal</code></td>
<td>float</td>
<td>Subtotal del pedido después de aplicar descuentos.</td>
</tr>
<tr>
<td><code>Descuento</code></td>
<td>float</td>
<td>Monto total de descuentos aplicados al pedido.</td>
</tr>
<tr>
<td><code>Total</code></td>
<td>float</td>
<td>Monto total del pedido después de impuestos y descuentos.</td>
</tr>
<tr>
<td><code>Iva</code></td>
<td>float</td>
<td>Monto total del IVA aplicado al pedido.</td>
</tr>
</tbody>
</table>
<h6 id="explicacion-cliente">Explicación Cliente<a class="headerlink" href="#explicacion-cliente" title="Permanent link">&para;</a></h6>
<table>
<thead>
<tr>
<th>Atributo</th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>Descripcion</code></td>
<td>string</td>
<td>Descripción del cliente.</td>
</tr>
<tr>
<td><code>Tipo</code></td>
<td>int</td>
<td>Tipo de cliente.</td>
</tr>
<tr>
<td><code>NombreComercial</code></td>
<td>string</td>
<td>Nombre comercial del cliente.</td>
</tr>
<tr>
<td><code>RazonSocial</code></td>
<td>string</td>
<td>Razón social del cliente.</td>
</tr>
<tr>
<td><code>Domicilio</code></td>
<td>string</td>
<td>Dirección del cliente.</td>
</tr>
<tr>
<td><code>CodigoPostal</code></td>
<td>string</td>
<td>Código postal del cliente.</td>
</tr>
<tr>
<td><code>Poblacion</code></td>
<td>string</td>
<td>Ciudad o población del cliente.</td>
</tr>
<tr>
<td><code>Provincia</code></td>
<td>string</td>
<td>Provincia del cliente.</td>
</tr>
<tr>
<td><code>Telefono1</code></td>
<td>string</td>
<td>Número de teléfono principal del cliente.</td>
</tr>
<tr>
<td><code>Telefono2</code></td>
<td>string</td>
<td>Número de teléfono secundario del cliente.</td>
</tr>
<tr>
<td><code>Fax</code></td>
<td>string</td>
<td>Número de fax del cliente.</td>
</tr>
<tr>
<td><code>Email</code></td>
<td>string</td>
<td>Correo electrónico del cliente.</td>
</tr>
<tr>
<td><code>Pais</code></td>
<td>string</td>
<td>País del cliente.</td>
</tr>
<tr>
<td><code>Observaciones</code></td>
<td>string</td>
<td>Observaciones adicionales sobre el cliente.</td>
</tr>
<tr>
<td><code>NifCif</code></td>
<td>string</td>
<td>NIF o CIF del cliente.</td>
</tr>
</tbody>
</table>
<h6 id="explicacion-envio">Explicación Envío<a class="headerlink" href="#explicacion-envio" title="Permanent link">&para;</a></h6>
<table>
<thead>
<tr>
<th>Atributo</th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>Descripcion</code></td>
<td>string</td>
<td>Descripción del envío.</td>
</tr>
<tr>
<td><code>Tipo</code></td>
<td>int</td>
<td>Tipo de envío.</td>
</tr>
<tr>
<td><code>NombreComercial</code></td>
<td>string</td>
<td>Nombre comercial del destinatario del envío.</td>
</tr>
<tr>
<td><code>RazonSocial</code></td>
<td>string</td>
<td>Razón social del destinatario del envío.</td>
</tr>
<tr>
<td><code>Domicilio</code></td>
<td>string</td>
<td>Dirección del destinatario del envío.</td>
</tr>
<tr>
<td><code>CodigoPostal</code></td>
<td>string</td>
<td>Código postal del destinatario del envío.</td>
</tr>
<tr>
<td><code>Poblacion</code></td>
<td>string</td>
<td>Ciudad o población del destinatario del envío.</td>
</tr>
<tr>
<td><code>Provincia</code></td>
<td>string</td>
<td>Provincia del destinatario del envío.</td>
</tr>
<tr>
<td><code>Telefono1</code></td>
<td>string</td>
<td>Número de teléfono principal del destinatario del envío.</td>
</tr>
<tr>
<td><code>Telefono2</code></td>
<td>string</td>
<td>Número de teléfono secundario del destinatario del envío.</td>
</tr>
<tr>
<td><code>Fax</code></td>
<td>string</td>
<td>Número de fax del destinatario del envío.</td>
</tr>
<tr>
<td><code>Email</code></td>
<td>string</td>
<td>Correo electrónico del destinatario del envío.</td>
</tr>
<tr>
<td><code>Pais</code></td>
<td>string</td>
<td>País del destinatario del envío.</td>
</tr>
<tr>
<td><code>Observaciones</code></td>
<td>string</td>
<td>Observaciones adicionales sobre el envío.</td>
</tr>
<tr>
<td><code>NifCif</code></td>
<td>string</td>
<td>NIF o CIF del destinatario del envío.</td>
</tr>
</tbody>
</table>
<h6 id="explicacion-lineas-del-pedido">Explicación Líneas del Pedido<a class="headerlink" href="#explicacion-lineas-del-pedido" title="Permanent link">&para;</a></h6>
<table>
<thead>
<tr>
<th>Atributo</th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>Tipo</code></td>
<td>int</td>
<td>Tipo de línea del pedido.</td>
</tr>
<tr>
<td><code>Referencia</code></td>
<td>string</td>
<td>Referencia única de la línea del pedido.</td>
</tr>
<tr>
<td><code>Cantidad</code></td>
<td>int</td>
<td>Cantidad de unidades de la línea del pedido.</td>
</tr>
<tr>
<td><code>Concepto</code></td>
<td>string</td>
<td>Concepto o descripción de la línea del pedido.</td>
</tr>
<tr>
<td><code>Precio</code></td>
<td>float</td>
<td>Precio unitario de la línea del pedido.</td>
</tr>
<tr>
<td><code>Base</code></td>
<td>float</td>
<td>Monto base de la línea del pedido antes de impuestos y descuentos.</td>
</tr>
<tr>
<td><code>SubTotal</code></td>
<td>float</td>
<td>Subtotal de la línea del pedido después de aplicar descuentos.</td>
</tr>
<tr>
<td><code>PorcentajeDescuento</code></td>
<td>float</td>
<td>Porcentaje de descuento aplicado a la línea del pedido.</td>
</tr>
<tr>
<td><code>Descuento</code></td>
<td>float</td>
<td>Monto total de descuentos aplicados a la línea del pedido.</td>
</tr>
</tbody>
</table>
<div class="annotate">
<blockquote>
<p>Responses: --&gt; (1) &lt;--</p>
</blockquote>
</div>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">Response:</span><pre><span></span><code><a id="__codelineno-12-1" name="__codelineno-12-1" href="#__codelineno-12-1"></a>    - 200: Mensaje de éxito
<a id="__codelineno-12-2" name="__codelineno-12-2" href="#__codelineno-12-2"></a>    - 400: Error al insertar el pedido
</code></pre></div></li>
</ol>
<h4 id="code-exe">Code exe<a class="headerlink" href="#code-exe" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="1:5"><input checked="checked" id="__tabbed_1_1" name="__tabbed_1" type="radio" /><input id="__tabbed_1_2" name="__tabbed_1" type="radio" /><input id="__tabbed_1_3" name="__tabbed_1" type="radio" /><input id="__tabbed_1_4" name="__tabbed_1" type="radio" /><input id="__tabbed_1_5" name="__tabbed_1" type="radio" /><div class="tabbed-labels"><label for="__tabbed_1_1">C#</label><label for="__tabbed_1_2">Java</label><label for="__tabbed_1_3">python</label><label for="__tabbed_1_4">JavaScript</label><label for="__tabbed_1_5">Ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-13-1" name="__codelineno-13-1" href="#__codelineno-13-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">json</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">JsonConvert</span><span class="p">.</span><span class="n">SerializeObject</span><span class="p">(</span><span class="n">JSONPEDIDO</span><span class="p">);</span>
<a id="__codelineno-13-2" name="__codelineno-13-2" href="#__codelineno-13-2"></a>
<a id="__codelineno-13-3" name="__codelineno-13-3" href="#__codelineno-13-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-13-4" name="__codelineno-13-4" href="#__codelineno-13-4"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-13-5" name="__codelineno-13-5" href="#__codelineno-13-5"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/CrearPedido&quot;</span><span class="p">);</span>
<a id="__codelineno-13-6" name="__codelineno-13-6" href="#__codelineno-13-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-13-7" name="__codelineno-13-7" href="#__codelineno-13-7"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-13-8" name="__codelineno-13-8" href="#__codelineno-13-8"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;accept&quot;</span><span class="p">,</span><span class="w"> </span><span class="s">&quot;application/json&quot;</span><span class="p">);</span>
<a id="__codelineno-13-9" name="__codelineno-13-9" href="#__codelineno-13-9"></a><span class="n">request</span><span class="p">.</span><span class="n">AddJsonBody</span><span class="p">(</span><span class="n">json</span><span class="p">);</span>
<a id="__codelineno-13-10" name="__codelineno-13-10" href="#__codelineno-13-10"></a>
<a id="__codelineno-13-11" name="__codelineno-13-11" href="#__codelineno-13-11"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-13-12" name="__codelineno-13-12" href="#__codelineno-13-12"></a>
<a id="__codelineno-13-13" name="__codelineno-13-13" href="#__codelineno-13-13"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-14-1" name="__codelineno-14-1" href="#__codelineno-14-1"></a><span class="c1">// Convertir JSONPEDIDO a formato JSON</span>
<a id="__codelineno-14-2" name="__codelineno-14-2" href="#__codelineno-14-2"></a><span class="n">String</span><span class="w"> </span><span class="n">json</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">Gson</span><span class="p">().</span><span class="na">toJson</span><span class="p">(</span><span class="n">JSONPEDIDO</span><span class="p">);</span>
<a id="__codelineno-14-3" name="__codelineno-14-3" href="#__codelineno-14-3"></a>
<a id="__codelineno-14-4" name="__codelineno-14-4" href="#__codelineno-14-4"></a><span class="c1">// Crear cliente HTTP</span>
<a id="__codelineno-14-5" name="__codelineno-14-5" href="#__codelineno-14-5"></a><span class="n">HttpClient</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClient</span><span class="p">.</span><span class="na">newHttpClient</span><span class="p">();</span>
<a id="__codelineno-14-6" name="__codelineno-14-6" href="#__codelineno-14-6"></a>
<a id="__codelineno-14-7" name="__codelineno-14-7" href="#__codelineno-14-7"></a><span class="c1">// Crear solicitud POST</span>
<a id="__codelineno-14-8" name="__codelineno-14-8" href="#__codelineno-14-8"></a><span class="n">HttpRequest</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpRequest</span><span class="p">.</span><span class="na">newBuilder</span><span class="p">()</span>
<a id="__codelineno-14-9" name="__codelineno-14-9" href="#__codelineno-14-9"></a><span class="w">    </span><span class="p">.</span><span class="na">uri</span><span class="p">(</span><span class="n">URI</span><span class="p">.</span><span class="na">create</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/CrearPedido&quot;</span><span class="p">))</span>
<a id="__codelineno-14-10" name="__codelineno-14-10" href="#__codelineno-14-10"></a><span class="w">    </span><span class="p">.</span><span class="na">header</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">)</span>
<a id="__codelineno-14-11" name="__codelineno-14-11" href="#__codelineno-14-11"></a><span class="w">    </span><span class="p">.</span><span class="na">header</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">String</span><span class="p">.</span><span class="na">valueOf</span><span class="p">(</span><span class="n">idempresa</span><span class="p">))</span>
<a id="__codelineno-14-12" name="__codelineno-14-12" href="#__codelineno-14-12"></a><span class="w">    </span><span class="p">.</span><span class="na">header</span><span class="p">(</span><span class="s">&quot;accept&quot;</span><span class="p">,</span><span class="w"> </span><span class="s">&quot;application/json&quot;</span><span class="p">)</span>
<a id="__codelineno-14-13" name="__codelineno-14-13" href="#__codelineno-14-13"></a><span class="w">    </span><span class="p">.</span><span class="na">header</span><span class="p">(</span><span class="s">&quot;Content-Type&quot;</span><span class="p">,</span><span class="w"> </span><span class="s">&quot;application/json&quot;</span><span class="p">)</span>
<a id="__codelineno-14-14" name="__codelineno-14-14" href="#__codelineno-14-14"></a><span class="w">    </span><span class="p">.</span><span class="na">POST</span><span class="p">(</span><span class="n">HttpRequest</span><span class="p">.</span><span class="na">BodyPublishers</span><span class="p">.</span><span class="na">ofString</span><span class="p">(</span><span class="n">json</span><span class="p">))</span>
<a id="__codelineno-14-15" name="__codelineno-14-15" href="#__codelineno-14-15"></a><span class="w">    </span><span class="p">.</span><span class="na">build</span><span class="p">();</span>
<a id="__codelineno-14-16" name="__codelineno-14-16" href="#__codelineno-14-16"></a>
<a id="__codelineno-14-17" name="__codelineno-14-17" href="#__codelineno-14-17"></a><span class="c1">// Enviar solicitud y obtener respuesta</span>
<a id="__codelineno-14-18" name="__codelineno-14-18" href="#__codelineno-14-18"></a><span class="n">HttpResponse</span><span class="o">&lt;</span><span class="n">String</span><span class="o">&gt;</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="na">send</span><span class="p">(</span><span class="n">request</span><span class="p">,</span><span class="w"> </span><span class="n">HttpResponse</span><span class="p">.</span><span class="na">BodyHandlers</span><span class="p">.</span><span class="na">ofString</span><span class="p">());</span>
<a id="__codelineno-14-19" name="__codelineno-14-19" href="#__codelineno-14-19"></a>
<a id="__codelineno-14-20" name="__codelineno-14-20" href="#__codelineno-14-20"></a><span class="c1">// Devolver el contenido de la respuesta</span>
<a id="__codelineno-14-21" name="__codelineno-14-21" href="#__codelineno-14-21"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="na">body</span><span class="p">();</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-15-1" name="__codelineno-15-1" href="#__codelineno-15-1"></a><span class="n">json_data</span> <span class="o">=</span> <span class="n">json</span><span class="o">.</span><span class="n">dumps</span><span class="p">(</span><span class="n">JSONPEDIDO</span><span class="p">)</span>
<a id="__codelineno-15-2" name="__codelineno-15-2" href="#__codelineno-15-2"></a>
<a id="__codelineno-15-3" name="__codelineno-15-3" href="#__codelineno-15-3"></a><span class="c1"># Configurar la URL base y la ruta del endpoint</span>
<a id="__codelineno-15-4" name="__codelineno-15-4" href="#__codelineno-15-4"></a><span class="n">base_url</span> <span class="o">=</span> <span class="s2">&quot;https://apis.metasync.com&quot;</span>
<a id="__codelineno-15-5" name="__codelineno-15-5" href="#__codelineno-15-5"></a><span class="n">endpoint</span> <span class="o">=</span> <span class="s2">&quot;/Pedidos/CrearPedido&quot;</span>
<a id="__codelineno-15-6" name="__codelineno-15-6" href="#__codelineno-15-6"></a>
<a id="__codelineno-15-7" name="__codelineno-15-7" href="#__codelineno-15-7"></a><span class="c1"># Configurar los encabezados de la solicitud</span>
<a id="__codelineno-15-8" name="__codelineno-15-8" href="#__codelineno-15-8"></a><span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-15-9" name="__codelineno-15-9" href="#__codelineno-15-9"></a>    <span class="s2">&quot;apiKey&quot;</span><span class="p">:</span> <span class="n">apiKey</span><span class="p">,</span>
<a id="__codelineno-15-10" name="__codelineno-15-10" href="#__codelineno-15-10"></a>    <span class="s2">&quot;idempresa&quot;</span><span class="p">:</span> <span class="nb">str</span><span class="p">(</span><span class="n">idempresa</span><span class="p">),</span>
<a id="__codelineno-15-11" name="__codelineno-15-11" href="#__codelineno-15-11"></a>    <span class="s2">&quot;accept&quot;</span><span class="p">:</span> <span class="s2">&quot;application/json&quot;</span><span class="p">,</span>
<a id="__codelineno-15-12" name="__codelineno-15-12" href="#__codelineno-15-12"></a>    <span class="s2">&quot;Content-Type&quot;</span><span class="p">:</span> <span class="s2">&quot;application/json&quot;</span>
<a id="__codelineno-15-13" name="__codelineno-15-13" href="#__codelineno-15-13"></a><span class="p">}</span>
<a id="__codelineno-15-14" name="__codelineno-15-14" href="#__codelineno-15-14"></a>
<a id="__codelineno-15-15" name="__codelineno-15-15" href="#__codelineno-15-15"></a><span class="c1"># Realizar la solicitud POST</span>
<a id="__codelineno-15-16" name="__codelineno-15-16" href="#__codelineno-15-16"></a><span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="n">base_url</span> <span class="o">+</span> <span class="n">endpoint</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">,</span> <span class="n">json</span><span class="o">=</span><span class="n">json_data</span><span class="p">)</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-16-1" name="__codelineno-16-1" href="#__codelineno-16-1"></a><span class="c1">// Convertir JSONPEDIDO a formato JSON</span>
<a id="__codelineno-16-2" name="__codelineno-16-2" href="#__codelineno-16-2"></a><span class="kd">let</span><span class="w"> </span><span class="nx">json</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nb">JSON</span><span class="p">.</span><span class="nx">stringify</span><span class="p">(</span><span class="nx">JSONPEDIDO</span><span class="p">);</span>
<a id="__codelineno-16-3" name="__codelineno-16-3" href="#__codelineno-16-3"></a>
<a id="__codelineno-16-4" name="__codelineno-16-4" href="#__codelineno-16-4"></a><span class="c1">// Configurar los encabezados de la solicitud</span>
<a id="__codelineno-16-5" name="__codelineno-16-5" href="#__codelineno-16-5"></a><span class="kd">let</span><span class="w"> </span><span class="nx">headers</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-16-6" name="__codelineno-16-6" href="#__codelineno-16-6"></a><span class="w">    </span><span class="s2">&quot;apiKey&quot;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-16-7" name="__codelineno-16-7" href="#__codelineno-16-7"></a><span class="w">    </span><span class="s2">&quot;idempresa&quot;</span><span class="o">:</span><span class="w"> </span><span class="nx">idempresa</span><span class="p">.</span><span class="nx">toString</span><span class="p">(),</span>
<a id="__codelineno-16-8" name="__codelineno-16-8" href="#__codelineno-16-8"></a><span class="w">    </span><span class="s2">&quot;accept&quot;</span><span class="o">:</span><span class="w"> </span><span class="s2">&quot;application/json&quot;</span><span class="p">,</span>
<a id="__codelineno-16-9" name="__codelineno-16-9" href="#__codelineno-16-9"></a><span class="w">    </span><span class="s2">&quot;Content-Type&quot;</span><span class="o">:</span><span class="w"> </span><span class="s2">&quot;application/json&quot;</span>
<a id="__codelineno-16-10" name="__codelineno-16-10" href="#__codelineno-16-10"></a><span class="p">}</span>
<a id="__codelineno-16-11" name="__codelineno-16-11" href="#__codelineno-16-11"></a>
<a id="__codelineno-16-12" name="__codelineno-16-12" href="#__codelineno-16-12"></a><span class="c1">// Realizar la solicitud POST</span>
<a id="__codelineno-16-13" name="__codelineno-16-13" href="#__codelineno-16-13"></a><span class="kd">let</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/CrearPedido&quot;</span><span class="p">,</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-16-14" name="__codelineno-16-14" href="#__codelineno-16-14"></a><span class="w">    </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s2">&quot;POST&quot;</span><span class="p">,</span>
<a id="__codelineno-16-15" name="__codelineno-16-15" href="#__codelineno-16-15"></a><span class="w">    </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="nx">headers</span><span class="p">,</span>
<a id="__codelineno-16-16" name="__codelineno-16-16" href="#__codelineno-16-16"></a><span class="w">    </span><span class="nx">body</span><span class="o">:</span><span class="w"> </span><span class="nx">json</span>
<a id="__codelineno-16-17" name="__codelineno-16-17" href="#__codelineno-16-17"></a><span class="p">});</span>
<a id="__codelineno-16-18" name="__codelineno-16-18" href="#__codelineno-16-18"></a>
<a id="__codelineno-16-19" name="__codelineno-16-19" href="#__codelineno-16-19"></a><span class="c1">// Devolver el contenido de la respuesta</span>
<a id="__codelineno-16-20" name="__codelineno-16-20" href="#__codelineno-16-20"></a><span class="k">return</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-17-1" name="__codelineno-17-1" href="#__codelineno-17-1"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-17-2" name="__codelineno-17-2" href="#__codelineno-17-2"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-17-3" name="__codelineno-17-3" href="#__codelineno-17-3"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;json&#39;</span>
<a id="__codelineno-17-4" name="__codelineno-17-4" href="#__codelineno-17-4"></a>
<a id="__codelineno-17-5" name="__codelineno-17-5" href="#__codelineno-17-5"></a><span class="w">    </span><span class="c1"># Convertir JSONPEDIDO a formato JSON</span>
<a id="__codelineno-17-6" name="__codelineno-17-6" href="#__codelineno-17-6"></a><span class="w">    </span><span class="n">json</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">JSONPEDIDO</span><span class="o">.</span><span class="n">to_json</span>
<a id="__codelineno-17-7" name="__codelineno-17-7" href="#__codelineno-17-7"></a>
<a id="__codelineno-17-8" name="__codelineno-17-8" href="#__codelineno-17-8"></a><span class="w">    </span><span class="c1"># Configurar la URL y los encabezados de la solicitud</span>
<a id="__codelineno-17-9" name="__codelineno-17-9" href="#__codelineno-17-9"></a><span class="w">    </span><span class="n">uri</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="o">.</span><span class="n">parse</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/CrearPedido&quot;</span><span class="p">)</span>
<a id="__codelineno-17-10" name="__codelineno-17-10" href="#__codelineno-17-10"></a><span class="w">    </span><span class="n">headers</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-17-11" name="__codelineno-17-11" href="#__codelineno-17-11"></a><span class="w">        </span><span class="s1">&#39;apiKey&#39;</span><span class="w"> </span><span class="o">=&gt;</span><span class="w"> </span><span class="n">apiKey</span><span class="p">,</span>
<a id="__codelineno-17-12" name="__codelineno-17-12" href="#__codelineno-17-12"></a><span class="w">        </span><span class="s1">&#39;idempresa&#39;</span><span class="w"> </span><span class="o">=&gt;</span><span class="w"> </span><span class="n">idempresa</span><span class="o">.</span><span class="n">to_s</span><span class="p">,</span>
<a id="__codelineno-17-13" name="__codelineno-17-13" href="#__codelineno-17-13"></a><span class="w">        </span><span class="s1">&#39;accept&#39;</span><span class="w"> </span><span class="o">=&gt;</span><span class="w"> </span><span class="s1">&#39;application/json&#39;</span><span class="p">,</span>
<a id="__codelineno-17-14" name="__codelineno-17-14" href="#__codelineno-17-14"></a><span class="w">        </span><span class="s1">&#39;Content-Type&#39;</span><span class="w"> </span><span class="o">=&gt;</span><span class="w"> </span><span class="s1">&#39;application/json&#39;</span>
<a id="__codelineno-17-15" name="__codelineno-17-15" href="#__codelineno-17-15"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-17-16" name="__codelineno-17-16" href="#__codelineno-17-16"></a>
<a id="__codelineno-17-17" name="__codelineno-17-17" href="#__codelineno-17-17"></a><span class="w">    </span><span class="c1"># Crear la solicitud POST</span>
<a id="__codelineno-17-18" name="__codelineno-17-18" href="#__codelineno-17-18"></a><span class="w">    </span><span class="n">http</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">uri</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">uri</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-17-19" name="__codelineno-17-19" href="#__codelineno-17-19"></a><span class="w">    </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">uri</span><span class="o">.</span><span class="n">request_uri</span><span class="p">,</span><span class="w"> </span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-17-20" name="__codelineno-17-20" href="#__codelineno-17-20"></a><span class="w">    </span><span class="n">request</span><span class="o">.</span><span class="n">body</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">json</span>
<a id="__codelineno-17-21" name="__codelineno-17-21" href="#__codelineno-17-21"></a>
<a id="__codelineno-17-22" name="__codelineno-17-22" href="#__codelineno-17-22"></a><span class="w">    </span><span class="c1"># Realizar la solicitud y obtener la respuesta</span>
<a id="__codelineno-17-23" name="__codelineno-17-23" href="#__codelineno-17-23"></a><span class="w">    </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">http</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-17-24" name="__codelineno-17-24" href="#__codelineno-17-24"></a>
<a id="__codelineno-17-25" name="__codelineno-17-25" href="#__codelineno-17-25"></a><span class="w">    </span><span class="c1"># Devolver el contenido de la respuesta</span>
<a id="__codelineno-17-26" name="__codelineno-17-26" href="#__codelineno-17-26"></a><span class="w">    </span><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">body</span>
</code></pre></div>
</div>
</div>
</div>
<h3 id="actualizarestado"><strong>ActualizarEstado</strong><a class="headerlink" href="#actualizarestado" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>ActualizarEstado</mark>} permite actualizar el estado de un pedido.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Pedidos/ActualizarEstado</p>
</div>
<div class="annotate">
<blockquote>
<p>Estados enum: (1)</p>
</blockquote>
</div>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">public enum Estado</span><pre><span></span><code><a id="__codelineno-18-1" name="__codelineno-18-1" href="#__codelineno-18-1"></a>    {
<a id="__codelineno-18-2" name="__codelineno-18-2" href="#__codelineno-18-2"></a>        Desconocido = 0,
<a id="__codelineno-18-3" name="__codelineno-18-3" href="#__codelineno-18-3"></a>        EnSeguimiento = 1,
<a id="__codelineno-18-4" name="__codelineno-18-4" href="#__codelineno-18-4"></a>        Reservado = 2,
<a id="__codelineno-18-5" name="__codelineno-18-5" href="#__codelineno-18-5"></a>        Procesando = 3,
<a id="__codelineno-18-6" name="__codelineno-18-6" href="#__codelineno-18-6"></a>        EnReparto = 4,
<a id="__codelineno-18-7" name="__codelineno-18-7" href="#__codelineno-18-7"></a>        Entregado = 5,
<a id="__codelineno-18-8" name="__codelineno-18-8" href="#__codelineno-18-8"></a>        Anulado = 6,
<a id="__codelineno-18-9" name="__codelineno-18-9" href="#__codelineno-18-9"></a>        Devolucion = 7,
<a id="__codelineno-18-10" name="__codelineno-18-10" href="#__codelineno-18-10"></a>        DevolucionParcial = 8
<a id="__codelineno-18-11" name="__codelineno-18-11" href="#__codelineno-18-11"></a>    }
</code></pre></div></li>
</ol>
<p><strong>Parámetros de ActualizarEstado:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>exeemplo</th>
<th></th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>codigo</code></td>
<td>Header</td>
<td>(BPARTS_1281151_1022)</td>
<td>Required</td>
<td>string</td>
<td>Codigo del pedido</td>
</tr>
<tr>
<td><code>apikey</code></td>
<td>Header</td>
<td>(MS-5iq5RTxT6EW1BBqTHmGjdK6ZwhQ7C7v9S)</td>
<td>Required</td>
<td>string</td>
<td>Apikey Canal</td>
</tr>
<tr>
<td><code>idempresa</code></td>
<td>Header</td>
<td>(1460)</td>
<td>Required</td>
<td>int32</td>
<td>Identificador local de la empresa.</td>
</tr>
<tr>
<td><code>estado</code></td>
<td>Header</td>
<td>(0)</td>
<td>Required</td>
<td>string</td>
<td>Num estado al que deseamos actualizar</td>
</tr>
</tbody>
</table>
<h4 id="code-exe_1">Code exe<a class="headerlink" href="#code-exe_1" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="2:5"><input checked="checked" id="__tabbed_2_1" name="__tabbed_2" type="radio" /><input id="__tabbed_2_2" name="__tabbed_2" type="radio" /><input id="__tabbed_2_3" name="__tabbed_2" type="radio" /><input id="__tabbed_2_4" name="__tabbed_2" type="radio" /><input id="__tabbed_2_5" name="__tabbed_2" type="radio" /><div class="tabbed-labels"><label for="__tabbed_2_1">C#</label><label for="__tabbed_2_2">java</label><label for="__tabbed_2_3">python</label><label for="__tabbed_2_4">javascript</label><label for="__tabbed_2_5">ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-19-1" name="__codelineno-19-1" href="#__codelineno-19-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-19-2" name="__codelineno-19-2" href="#__codelineno-19-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-19-3" name="__codelineno-19-3" href="#__codelineno-19-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/ActualizarEstado&quot;</span><span class="p">);</span>
<a id="__codelineno-19-4" name="__codelineno-19-4" href="#__codelineno-19-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-19-5" name="__codelineno-19-5" href="#__codelineno-19-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;codigo&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">);</span>
<a id="__codelineno-19-6" name="__codelineno-19-6" href="#__codelineno-19-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-19-7" name="__codelineno-19-7" href="#__codelineno-19-7"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;estado&quot;</span><span class="p">,</span><span class="w"> </span><span class="s">&quot;0&quot;</span><span class="p">);</span>
<a id="__codelineno-19-8" name="__codelineno-19-8" href="#__codelineno-19-8"></a>
<a id="__codelineno-19-9" name="__codelineno-19-9" href="#__codelineno-19-9"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-19-10" name="__codelineno-19-10" href="#__codelineno-19-10"></a>
<a id="__codelineno-19-11" name="__codelineno-19-11" href="#__codelineno-19-11"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-20-1" name="__codelineno-20-1" href="#__codelineno-20-1"></a><span class="n">OkHttpClient</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">OkHttpClient</span><span class="p">();</span>
<a id="__codelineno-20-2" name="__codelineno-20-2" href="#__codelineno-20-2"></a><span class="w">    </span><span class="n">RequestBody</span><span class="w"> </span><span class="n">body</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">RequestBody</span><span class="p">.</span><span class="na">create</span><span class="p">(</span><span class="s">&quot;&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">JSON</span><span class="p">);</span><span class="w"> </span><span class="c1">// No hay cuerpo en este caso</span>
<a id="__codelineno-20-3" name="__codelineno-20-3" href="#__codelineno-20-3"></a><span class="w">    </span><span class="n">Request</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">Request</span><span class="p">.</span><span class="na">Builder</span><span class="p">()</span>
<a id="__codelineno-20-4" name="__codelineno-20-4" href="#__codelineno-20-4"></a><span class="w">        </span><span class="p">.</span><span class="na">url</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/ActualizarEstado&quot;</span><span class="p">)</span>
<a id="__codelineno-20-5" name="__codelineno-20-5" href="#__codelineno-20-5"></a><span class="w">        </span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">)</span>
<a id="__codelineno-20-6" name="__codelineno-20-6" href="#__codelineno-20-6"></a><span class="w">        </span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;codigo&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">)</span>
<a id="__codelineno-20-7" name="__codelineno-20-7" href="#__codelineno-20-7"></a><span class="w">        </span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">String</span><span class="p">.</span><span class="na">valueOf</span><span class="p">(</span><span class="n">idempresa</span><span class="p">))</span>
<a id="__codelineno-20-8" name="__codelineno-20-8" href="#__codelineno-20-8"></a><span class="w">        </span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;estado&quot;</span><span class="p">,</span><span class="w"> </span><span class="s">&quot;0&quot;</span><span class="p">)</span>
<a id="__codelineno-20-9" name="__codelineno-20-9" href="#__codelineno-20-9"></a><span class="w">        </span><span class="p">.</span><span class="na">post</span><span class="p">(</span><span class="n">body</span><span class="p">)</span>
<a id="__codelineno-20-10" name="__codelineno-20-10" href="#__codelineno-20-10"></a><span class="w">        </span><span class="p">.</span><span class="na">build</span><span class="p">();</span>
<a id="__codelineno-20-11" name="__codelineno-20-11" href="#__codelineno-20-11"></a>
<a id="__codelineno-20-12" name="__codelineno-20-12" href="#__codelineno-20-12"></a><span class="w">    </span><span class="c1">// Enviar la solicitud POST</span>
<a id="__codelineno-20-13" name="__codelineno-20-13" href="#__codelineno-20-13"></a><span class="w">    </span><span class="k">try</span><span class="w"> </span><span class="p">(</span><span class="n">Response</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="na">newCall</span><span class="p">(</span><span class="n">request</span><span class="p">).</span><span class="na">execute</span><span class="p">())</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-20-14" name="__codelineno-20-14" href="#__codelineno-20-14"></a><span class="w">        </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">body</span><span class="p">().</span><span class="na">string</span><span class="p">());</span>
<a id="__codelineno-20-15" name="__codelineno-20-15" href="#__codelineno-20-15"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-21-1" name="__codelineno-21-1" href="#__codelineno-21-1"></a>    <span class="c1"># Configurar la solicitud</span>
<a id="__codelineno-21-2" name="__codelineno-21-2" href="#__codelineno-21-2"></a><span class="n">url</span> <span class="o">=</span> <span class="s2">&quot;https://apis.metasync.com/Pedidos/ActualizarEstado&quot;</span>
<a id="__codelineno-21-3" name="__codelineno-21-3" href="#__codelineno-21-3"></a><span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-21-4" name="__codelineno-21-4" href="#__codelineno-21-4"></a>    <span class="s2">&quot;apiKey&quot;</span><span class="p">:</span> <span class="n">apiKey</span><span class="p">,</span>
<a id="__codelineno-21-5" name="__codelineno-21-5" href="#__codelineno-21-5"></a>    <span class="s2">&quot;codigo&quot;</span><span class="p">:</span> <span class="n">codigo</span><span class="p">,</span>
<a id="__codelineno-21-6" name="__codelineno-21-6" href="#__codelineno-21-6"></a>    <span class="s2">&quot;idempresa&quot;</span><span class="p">:</span> <span class="nb">str</span><span class="p">(</span><span class="n">idempresa</span><span class="p">),</span>
<a id="__codelineno-21-7" name="__codelineno-21-7" href="#__codelineno-21-7"></a>    <span class="s2">&quot;estado&quot;</span><span class="p">:</span> <span class="s2">&quot;0&quot;</span>
<a id="__codelineno-21-8" name="__codelineno-21-8" href="#__codelineno-21-8"></a><span class="p">}</span>
<a id="__codelineno-21-9" name="__codelineno-21-9" href="#__codelineno-21-9"></a>
<a id="__codelineno-21-10" name="__codelineno-21-10" href="#__codelineno-21-10"></a><span class="c1"># Enviar la solicitud POST</span>
<a id="__codelineno-21-11" name="__codelineno-21-11" href="#__codelineno-21-11"></a><span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-21-12" name="__codelineno-21-12" href="#__codelineno-21-12"></a>
<a id="__codelineno-21-13" name="__codelineno-21-13" href="#__codelineno-21-13"></a><span class="c1"># Imprimir el contenido de la respuesta</span>
<a id="__codelineno-21-14" name="__codelineno-21-14" href="#__codelineno-21-14"></a><span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">content</span><span class="p">)</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-22-1" name="__codelineno-22-1" href="#__codelineno-22-1"></a><span class="kd">const</span><span class="w"> </span><span class="nx">axios</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;axios&#39;</span><span class="p">);</span>
<a id="__codelineno-22-2" name="__codelineno-22-2" href="#__codelineno-22-2"></a>
<a id="__codelineno-22-3" name="__codelineno-22-3" href="#__codelineno-22-3"></a><span class="kd">const</span><span class="w"> </span><span class="nx">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;https://apis.metasync.com/Pedidos/ActualizarEstado&#39;</span><span class="p">;</span>
<a id="__codelineno-22-4" name="__codelineno-22-4" href="#__codelineno-22-4"></a><span class="kd">const</span><span class="w"> </span><span class="nx">headers</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-22-5" name="__codelineno-22-5" href="#__codelineno-22-5"></a><span class="w">    </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-22-6" name="__codelineno-22-6" href="#__codelineno-22-6"></a><span class="w">    </span><span class="s1">&#39;codigo&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">codigo</span><span class="p">,</span>
<a id="__codelineno-22-7" name="__codelineno-22-7" href="#__codelineno-22-7"></a><span class="w">    </span><span class="s1">&#39;idempresa&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">idempresa</span><span class="p">.</span><span class="nx">toString</span><span class="p">(),</span>
<a id="__codelineno-22-8" name="__codelineno-22-8" href="#__codelineno-22-8"></a><span class="w">    </span><span class="s1">&#39;estado&#39;</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;0&#39;</span>
<a id="__codelineno-22-9" name="__codelineno-22-9" href="#__codelineno-22-9"></a><span class="p">};</span>
<a id="__codelineno-22-10" name="__codelineno-22-10" href="#__codelineno-22-10"></a>
<a id="__codelineno-22-11" name="__codelineno-22-11" href="#__codelineno-22-11"></a><span class="nx">axios</span><span class="p">.</span><span class="nx">post</span><span class="p">(</span><span class="nx">url</span><span class="p">,</span><span class="w"> </span><span class="p">{},</span><span class="w"> </span><span class="p">{</span><span class="w"> </span><span class="nx">headers</span><span class="w"> </span><span class="p">})</span>
<a id="__codelineno-22-12" name="__codelineno-22-12" href="#__codelineno-22-12"></a><span class="w">    </span><span class="p">.</span><span class="nx">then</span><span class="p">(</span><span class="nx">response</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-22-13" name="__codelineno-22-13" href="#__codelineno-22-13"></a><span class="w">        </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">response</span><span class="p">.</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-22-14" name="__codelineno-22-14" href="#__codelineno-22-14"></a><span class="w">    </span><span class="p">})</span>
<a id="__codelineno-22-15" name="__codelineno-22-15" href="#__codelineno-22-15"></a><span class="w">    </span><span class="p">.</span><span class="k">catch</span><span class="p">(</span><span class="nx">error</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-22-16" name="__codelineno-22-16" href="#__codelineno-22-16"></a><span class="w">        </span><span class="nx">console</span><span class="p">.</span><span class="nx">error</span><span class="p">(</span><span class="s1">&#39;Error:&#39;</span><span class="p">,</span><span class="w"> </span><span class="nx">error</span><span class="p">);</span>
<a id="__codelineno-22-17" name="__codelineno-22-17" href="#__codelineno-22-17"></a><span class="w">    </span><span class="p">});</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-23-1" name="__codelineno-23-1" href="#__codelineno-23-1"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-23-2" name="__codelineno-23-2" href="#__codelineno-23-2"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-23-3" name="__codelineno-23-3" href="#__codelineno-23-3"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;json&#39;</span>
<a id="__codelineno-23-4" name="__codelineno-23-4" href="#__codelineno-23-4"></a>
<a id="__codelineno-23-5" name="__codelineno-23-5" href="#__codelineno-23-5"></a><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/ActualizarEstado&quot;</span><span class="p">)</span>
<a id="__codelineno-23-6" name="__codelineno-23-6" href="#__codelineno-23-6"></a><span class="n">headers</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-23-7" name="__codelineno-23-7" href="#__codelineno-23-7"></a><span class="w">    </span><span class="s1">&#39;apiKey&#39;</span><span class="p">:</span><span class="w"> </span><span class="n">apiKey</span><span class="p">,</span>
<a id="__codelineno-23-8" name="__codelineno-23-8" href="#__codelineno-23-8"></a><span class="w">    </span><span class="s1">&#39;codigo&#39;</span><span class="p">:</span><span class="w"> </span><span class="n">codigo</span><span class="p">,</span>
<a id="__codelineno-23-9" name="__codelineno-23-9" href="#__codelineno-23-9"></a><span class="w">    </span><span class="s1">&#39;idempresa&#39;</span><span class="p">:</span><span class="w"> </span><span class="n">idempresa</span><span class="o">.</span><span class="n">to_s</span><span class="p">,</span>
<a id="__codelineno-23-10" name="__codelineno-23-10" href="#__codelineno-23-10"></a><span class="w">    </span><span class="s1">&#39;estado&#39;</span><span class="p">:</span><span class="w"> </span><span class="s1">&#39;0&#39;</span>
<a id="__codelineno-23-11" name="__codelineno-23-11" href="#__codelineno-23-11"></a><span class="p">}</span>
<a id="__codelineno-23-12" name="__codelineno-23-12" href="#__codelineno-23-12"></a>
<a id="__codelineno-23-13" name="__codelineno-23-13" href="#__codelineno-23-13"></a><span class="n">http</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-23-14" name="__codelineno-23-14" href="#__codelineno-23-14"></a><span class="n">http</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-23-15" name="__codelineno-23-15" href="#__codelineno-23-15"></a>
<a id="__codelineno-23-16" name="__codelineno-23-16" href="#__codelineno-23-16"></a><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-23-17" name="__codelineno-23-17" href="#__codelineno-23-17"></a><span class="n">request</span><span class="o">[</span><span class="s1">&#39;Content-Type&#39;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;application/json&#39;</span>
<a id="__codelineno-23-18" name="__codelineno-23-18" href="#__codelineno-23-18"></a><span class="n">headers</span><span class="o">.</span><span class="n">each</span><span class="w"> </span><span class="p">{</span><span class="w"> </span><span class="o">|</span><span class="n">key</span><span class="p">,</span><span class="w"> </span><span class="n">value</span><span class="o">|</span><span class="w"> </span><span class="n">request</span><span class="o">[</span><span class="n">key</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">value</span><span class="w"> </span><span class="p">}</span>
<a id="__codelineno-23-19" name="__codelineno-23-19" href="#__codelineno-23-19"></a>
<a id="__codelineno-23-20" name="__codelineno-23-20" href="#__codelineno-23-20"></a><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">http</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-23-21" name="__codelineno-23-21" href="#__codelineno-23-21"></a><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">read_body</span>
</code></pre></div>
</div>
</div>
</div>
<h3 id="agregarseguimiento"><strong>AgregarSeguimiento</strong><a class="headerlink" href="#agregarseguimiento" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>AgregarSeguimiento</mark>} permite agregar seguimiento a un pedido.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Pedidos/AgregarSeguimiento</p>
</div>
<p><strong>Parámetros de AgregarSeguimiento:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>exeemplo</th>
<th></th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>codigo</code></td>
<td>Header</td>
<td>(3423423)</td>
<td>Required</td>
<td>int32</td>
<td>Codigo del pedido</td>
</tr>
<tr>
<td><code>apikey</code></td>
<td>Header</td>
<td>(MS-5iq5RTxT6EW1BBqTHmGjdK6ZwhQ7C7v9S)</td>
<td>Required</td>
<td>string</td>
<td>Apikey Canal</td>
</tr>
<tr>
<td><code>idempresa</code></td>
<td>Header</td>
<td>(1460)</td>
<td>Required</td>
<td>int32</td>
<td>Identificador local de la empresa.</td>
</tr>
<tr>
<td><code>url</code></td>
<td>Header</td>
<td>(https://.../view_order/1405978)</td>
<td>Required</td>
<td>string</td>
<td>Introducir url seguimiento</td>
</tr>
</tbody>
</table>
<h4 id="code-exe_2">Code exe<a class="headerlink" href="#code-exe_2" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="3:5"><input checked="checked" id="__tabbed_3_1" name="__tabbed_3" type="radio" /><input id="__tabbed_3_2" name="__tabbed_3" type="radio" /><input id="__tabbed_3_3" name="__tabbed_3" type="radio" /><input id="__tabbed_3_4" name="__tabbed_3" type="radio" /><input id="__tabbed_3_5" name="__tabbed_3" type="radio" /><div class="tabbed-labels"><label for="__tabbed_3_1">C#</label><label for="__tabbed_3_2">java</label><label for="__tabbed_3_3">python</label><label for="__tabbed_3_4">javascript</label><label for="__tabbed_3_5">Ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-24-1" name="__codelineno-24-1" href="#__codelineno-24-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-24-2" name="__codelineno-24-2" href="#__codelineno-24-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-24-3" name="__codelineno-24-3" href="#__codelineno-24-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/AgregarSeguimiento&quot;</span><span class="p">);</span>
<a id="__codelineno-24-4" name="__codelineno-24-4" href="#__codelineno-24-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-24-5" name="__codelineno-24-5" href="#__codelineno-24-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;codigo&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">);</span>
<a id="__codelineno-24-6" name="__codelineno-24-6" href="#__codelineno-24-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;url&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="p">);</span>
<a id="__codelineno-24-7" name="__codelineno-24-7" href="#__codelineno-24-7"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-24-8" name="__codelineno-24-8" href="#__codelineno-24-8"></a>
<a id="__codelineno-24-9" name="__codelineno-24-9" href="#__codelineno-24-9"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-24-10" name="__codelineno-24-10" href="#__codelineno-24-10"></a>
<a id="__codelineno-24-11" name="__codelineno-24-11" href="#__codelineno-24-11"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-25-1" name="__codelineno-25-1" href="#__codelineno-25-1"></a><span class="w">    </span><span class="n">String</span><span class="w"> </span><span class="n">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-25-2" name="__codelineno-25-2" href="#__codelineno-25-2"></a><span class="w">    </span><span class="n">String</span><span class="w"> </span><span class="n">codigo</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_codigo&quot;</span><span class="p">;</span>
<a id="__codelineno-25-3" name="__codelineno-25-3" href="#__codelineno-25-3"></a><span class="w">    </span><span class="n">String</span><span class="w"> </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_url&quot;</span><span class="p">;</span>
<a id="__codelineno-25-4" name="__codelineno-25-4" href="#__codelineno-25-4"></a><span class="w">    </span><span class="kt">int</span><span class="w"> </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">your_idempresa</span><span class="p">;</span>
<a id="__codelineno-25-5" name="__codelineno-25-5" href="#__codelineno-25-5"></a>
<a id="__codelineno-25-6" name="__codelineno-25-6" href="#__codelineno-25-6"></a><span class="w">    </span><span class="n">CloseableHttpClient</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClients</span><span class="p">.</span><span class="na">createDefault</span><span class="p">();</span>
<a id="__codelineno-25-7" name="__codelineno-25-7" href="#__codelineno-25-7"></a><span class="w">    </span><span class="n">HttpPost</span><span class="w"> </span><span class="n">httpPost</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">HttpPost</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/AgregarSeguimiento&quot;</span><span class="p">);</span>
<a id="__codelineno-25-8" name="__codelineno-25-8" href="#__codelineno-25-8"></a><span class="w">    </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-25-9" name="__codelineno-25-9" href="#__codelineno-25-9"></a><span class="w">    </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;codigo&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">);</span>
<a id="__codelineno-25-10" name="__codelineno-25-10" href="#__codelineno-25-10"></a><span class="w">    </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;url&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="p">);</span>
<a id="__codelineno-25-11" name="__codelineno-25-11" href="#__codelineno-25-11"></a><span class="w">    </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">String</span><span class="p">.</span><span class="na">valueOf</span><span class="p">(</span><span class="n">idempresa</span><span class="p">));</span>
<a id="__codelineno-25-12" name="__codelineno-25-12" href="#__codelineno-25-12"></a>
<a id="__codelineno-25-13" name="__codelineno-25-13" href="#__codelineno-25-13"></a><span class="w">    </span><span class="n">CloseableHttpResponse</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="na">execute</span><span class="p">(</span><span class="n">httpPost</span><span class="p">);</span>
<a id="__codelineno-25-14" name="__codelineno-25-14" href="#__codelineno-25-14"></a>
<a id="__codelineno-25-15" name="__codelineno-25-15" href="#__codelineno-25-15"></a><span class="w">    </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">getEntity</span><span class="p">().</span><span class="na">getContent</span><span class="p">());</span>
<a id="__codelineno-25-16" name="__codelineno-25-16" href="#__codelineno-25-16"></a>
<a id="__codelineno-25-17" name="__codelineno-25-17" href="#__codelineno-25-17"></a><span class="w">    </span><span class="n">client</span><span class="p">.</span><span class="na">close</span><span class="p">();</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-26-1" name="__codelineno-26-1" href="#__codelineno-26-1"></a>    <span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-26-2" name="__codelineno-26-2" href="#__codelineno-26-2"></a>
<a id="__codelineno-26-3" name="__codelineno-26-3" href="#__codelineno-26-3"></a>    <span class="k">def</span> <span class="nf">agregar_seguimiento</span><span class="p">(</span><span class="n">api_key</span><span class="p">,</span> <span class="n">codigo</span><span class="p">,</span> <span class="n">url</span><span class="p">,</span> <span class="n">idempresa</span><span class="p">):</span>
<a id="__codelineno-26-4" name="__codelineno-26-4" href="#__codelineno-26-4"></a>        <span class="n">url</span> <span class="o">=</span> <span class="s2">&quot;https://apis.metasync.com/Pedidos/AgregarSeguimiento&quot;</span>
<a id="__codelineno-26-5" name="__codelineno-26-5" href="#__codelineno-26-5"></a>        <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span><span class="s2">&quot;apiKey&quot;</span><span class="p">:</span> <span class="n">api_key</span><span class="p">,</span> <span class="s2">&quot;codigo&quot;</span><span class="p">:</span> <span class="n">codigo</span><span class="p">,</span> <span class="s2">&quot;url&quot;</span><span class="p">:</span> <span class="n">url</span><span class="p">,</span> <span class="s2">&quot;idempresa&quot;</span><span class="p">:</span> <span class="nb">str</span><span class="p">(</span><span class="n">idempresa</span><span class="p">)}</span>
<a id="__codelineno-26-6" name="__codelineno-26-6" href="#__codelineno-26-6"></a>        <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-26-7" name="__codelineno-26-7" href="#__codelineno-26-7"></a>        <span class="k">return</span> <span class="n">response</span><span class="o">.</span><span class="n">text</span>
<a id="__codelineno-26-8" name="__codelineno-26-8" href="#__codelineno-26-8"></a>
<a id="__codelineno-26-9" name="__codelineno-26-9" href="#__codelineno-26-9"></a>    <span class="c1"># Uso del método</span>
<a id="__codelineno-26-10" name="__codelineno-26-10" href="#__codelineno-26-10"></a>    <span class="n">api_key</span> <span class="o">=</span> <span class="s2">&quot;your_api_key&quot;</span>
<a id="__codelineno-26-11" name="__codelineno-26-11" href="#__codelineno-26-11"></a>    <span class="n">codigo</span> <span class="o">=</span> <span class="s2">&quot;your_codigo&quot;</span>
<a id="__codelineno-26-12" name="__codelineno-26-12" href="#__codelineno-26-12"></a>    <span class="n">url</span> <span class="o">=</span> <span class="s2">&quot;your_url&quot;</span>
<a id="__codelineno-26-13" name="__codelineno-26-13" href="#__codelineno-26-13"></a>    <span class="n">idempresa</span> <span class="o">=</span> <span class="n">your_idempresa</span>
<a id="__codelineno-26-14" name="__codelineno-26-14" href="#__codelineno-26-14"></a>    <span class="n">response_content</span> <span class="o">=</span> <span class="n">agregar_seguimiento</span><span class="p">(</span><span class="n">api_key</span><span class="p">,</span> <span class="n">codigo</span><span class="p">,</span> <span class="n">url</span><span class="p">,</span> <span class="n">idempresa</span><span class="p">)</span>
<a id="__codelineno-26-15" name="__codelineno-26-15" href="#__codelineno-26-15"></a>    <span class="nb">print</span><span class="p">(</span><span class="n">response_content</span><span class="p">)</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-27-1" name="__codelineno-27-1" href="#__codelineno-27-1"></a><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-27-2" name="__codelineno-27-2" href="#__codelineno-27-2"></a>
<a id="__codelineno-27-3" name="__codelineno-27-3" href="#__codelineno-27-3"></a><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">agregarSeguimiento</span><span class="p">(</span><span class="nx">apiKey</span><span class="p">,</span><span class="w"> </span><span class="nx">codigo</span><span class="p">,</span><span class="w"> </span><span class="nx">url</span><span class="p">,</span><span class="w"> </span><span class="nx">idempresa</span><span class="p">)</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-27-4" name="__codelineno-27-4" href="#__codelineno-27-4"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;https://apis.metasync.com/Pedidos/AgregarSeguimiento&quot;</span><span class="p">;</span>
<a id="__codelineno-27-5" name="__codelineno-27-5" href="#__codelineno-27-5"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-27-6" name="__codelineno-27-6" href="#__codelineno-27-6"></a><span class="w">        </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-27-7" name="__codelineno-27-7" href="#__codelineno-27-7"></a><span class="w">        </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-27-8" name="__codelineno-27-8" href="#__codelineno-27-8"></a><span class="w">            </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-27-9" name="__codelineno-27-9" href="#__codelineno-27-9"></a><span class="w">            </span><span class="s1">&#39;codigo&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">codigo</span><span class="p">,</span>
<a id="__codelineno-27-10" name="__codelineno-27-10" href="#__codelineno-27-10"></a><span class="w">            </span><span class="s1">&#39;url&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">url</span><span class="p">,</span>
<a id="__codelineno-27-11" name="__codelineno-27-11" href="#__codelineno-27-11"></a><span class="w">            </span><span class="s1">&#39;idempresa&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">idempresa</span><span class="p">.</span><span class="nx">toString</span><span class="p">()</span>
<a id="__codelineno-27-12" name="__codelineno-27-12" href="#__codelineno-27-12"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-27-13" name="__codelineno-27-13" href="#__codelineno-27-13"></a><span class="w">    </span><span class="p">};</span>
<a id="__codelineno-27-14" name="__codelineno-27-14" href="#__codelineno-27-14"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="nx">url</span><span class="p">,</span><span class="w"> </span><span class="nx">options</span><span class="p">);</span>
<a id="__codelineno-27-15" name="__codelineno-27-15" href="#__codelineno-27-15"></a><span class="w">    </span><span class="k">return</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<a id="__codelineno-27-16" name="__codelineno-27-16" href="#__codelineno-27-16"></a><span class="p">}</span>
<a id="__codelineno-27-17" name="__codelineno-27-17" href="#__codelineno-27-17"></a>
<a id="__codelineno-27-18" name="__codelineno-27-18" href="#__codelineno-27-18"></a><span class="c1">// Uso de la función</span>
<a id="__codelineno-27-19" name="__codelineno-27-19" href="#__codelineno-27-19"></a><span class="kd">const</span><span class="w"> </span><span class="nx">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-27-20" name="__codelineno-27-20" href="#__codelineno-27-20"></a><span class="kd">const</span><span class="w"> </span><span class="nx">codigo</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;your_codigo&quot;</span><span class="p">;</span>
<a id="__codelineno-27-21" name="__codelineno-27-21" href="#__codelineno-27-21"></a><span class="kd">const</span><span class="w"> </span><span class="nx">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;your_url&quot;</span><span class="p">;</span>
<a id="__codelineno-27-22" name="__codelineno-27-22" href="#__codelineno-27-22"></a><span class="kd">const</span><span class="w"> </span><span class="nx">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">your_idempresa</span><span class="p">;</span>
<a id="__codelineno-27-23" name="__codelineno-27-23" href="#__codelineno-27-23"></a><span class="nx">agregarSeguimiento</span><span class="p">(</span><span class="nx">apiKey</span><span class="p">,</span><span class="w"> </span><span class="nx">codigo</span><span class="p">,</span><span class="w"> </span><span class="nx">url</span><span class="p">,</span><span class="w"> </span><span class="nx">idempresa</span><span class="p">)</span>
<a id="__codelineno-27-24" name="__codelineno-27-24" href="#__codelineno-27-24"></a><span class="w">    </span><span class="p">.</span><span class="nx">then</span><span class="p">(</span><span class="nx">responseContent</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">responseContent</span><span class="p">))</span>
<a id="__codelineno-27-25" name="__codelineno-27-25" href="#__codelineno-27-25"></a><span class="w">    </span><span class="p">.</span><span class="k">catch</span><span class="p">(</span><span class="nx">error</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="nx">console</span><span class="p">.</span><span class="nx">error</span><span class="p">(</span><span class="s1">&#39;Error:&#39;</span><span class="p">,</span><span class="w"> </span><span class="nx">error</span><span class="p">));</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-28-1" name="__codelineno-28-1" href="#__codelineno-28-1"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-28-2" name="__codelineno-28-2" href="#__codelineno-28-2"></a>
<a id="__codelineno-28-3" name="__codelineno-28-3" href="#__codelineno-28-3"></a><span class="w">    </span><span class="k">def</span><span class="w"> </span><span class="nf">agregar_seguimiento</span><span class="p">(</span><span class="n">api_key</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">)</span>
<a id="__codelineno-28-4" name="__codelineno-28-4" href="#__codelineno-28-4"></a><span class="w">    </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/AgregarSeguimiento&quot;</span><span class="p">)</span>
<a id="__codelineno-28-5" name="__codelineno-28-5" href="#__codelineno-28-5"></a><span class="w">    </span><span class="n">http</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-28-6" name="__codelineno-28-6" href="#__codelineno-28-6"></a><span class="w">    </span><span class="n">http</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-28-7" name="__codelineno-28-7" href="#__codelineno-28-7"></a>
<a id="__codelineno-28-8" name="__codelineno-28-8" href="#__codelineno-28-8"></a><span class="w">    </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-28-9" name="__codelineno-28-9" href="#__codelineno-28-9"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">api_key</span>
<a id="__codelineno-28-10" name="__codelineno-28-10" href="#__codelineno-28-10"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;codigo&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">codigo</span>
<a id="__codelineno-28-11" name="__codelineno-28-11" href="#__codelineno-28-11"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;url&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">url</span>
<a id="__codelineno-28-12" name="__codelineno-28-12" href="#__codelineno-28-12"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;idempresa&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">idempresa</span><span class="o">.</span><span class="n">to_s</span>
<a id="__codelineno-28-13" name="__codelineno-28-13" href="#__codelineno-28-13"></a>
<a id="__codelineno-28-14" name="__codelineno-28-14" href="#__codelineno-28-14"></a><span class="w">    </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">http</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-28-15" name="__codelineno-28-15" href="#__codelineno-28-15"></a><span class="w">    </span><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">body</span>
<a id="__codelineno-28-16" name="__codelineno-28-16" href="#__codelineno-28-16"></a><span class="w">    </span><span class="k">end</span>
<a id="__codelineno-28-17" name="__codelineno-28-17" href="#__codelineno-28-17"></a>
<a id="__codelineno-28-18" name="__codelineno-28-18" href="#__codelineno-28-18"></a><span class="w">    </span><span class="c1"># Uso del método</span>
<a id="__codelineno-28-19" name="__codelineno-28-19" href="#__codelineno-28-19"></a><span class="w">    </span><span class="n">api_key</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;your_api_key&quot;</span>
<a id="__codelineno-28-20" name="__codelineno-28-20" href="#__codelineno-28-20"></a><span class="w">    </span><span class="n">codigo</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;your_codigo&quot;</span>
<a id="__codelineno-28-21" name="__codelineno-28-21" href="#__codelineno-28-21"></a><span class="w">    </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;your_url&quot;</span>
<a id="__codelineno-28-22" name="__codelineno-28-22" href="#__codelineno-28-22"></a><span class="w">    </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">your_idempresa</span>
<a id="__codelineno-28-23" name="__codelineno-28-23" href="#__codelineno-28-23"></a><span class="w">    </span><span class="n">response_content</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">agregar_seguimiento</span><span class="p">(</span><span class="n">api_key</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">)</span>
<a id="__codelineno-28-24" name="__codelineno-28-24" href="#__codelineno-28-24"></a><span class="w">    </span><span class="nb">puts</span><span class="w"> </span><span class="n">response_content</span>
</code></pre></div>
</div>
</div>
</div>
<h3 id="anularpedido"><strong>AnularPedido</strong><a class="headerlink" href="#anularpedido" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>AnularPedido</mark>} permite cancelar un pedido a través de su código.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Pedidos/AnularPedido</p>
</div>
<p><strong>Parámetros de AnularPedido:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>exeemplo</th>
<th></th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>codigo</code></td>
<td>Header</td>
<td>(RV-6C7QT17C)</td>
<td>Required</td>
<td>int32</td>
<td>Codigo del pedido</td>
</tr>
<tr>
<td><code>apikey</code></td>
<td>Header</td>
<td>(MS-5iq5RTxT6EW1BBqTHmGjdK6ZwhQ7C7v9S)</td>
<td>Required</td>
<td>string</td>
<td>Apikey Canal</td>
</tr>
<tr>
<td><code>idempresa</code></td>
<td>Header</td>
<td>(1460)</td>
<td>Required</td>
<td>int32</td>
<td>Identificador local de la empresa.</td>
</tr>
</tbody>
</table>
<h4 id="code-exe_3">Code exe<a class="headerlink" href="#code-exe_3" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="4:5"><input checked="checked" id="__tabbed_4_1" name="__tabbed_4" type="radio" /><input id="__tabbed_4_2" name="__tabbed_4" type="radio" /><input id="__tabbed_4_3" name="__tabbed_4" type="radio" /><input id="__tabbed_4_4" name="__tabbed_4" type="radio" /><input id="__tabbed_4_5" name="__tabbed_4" type="radio" /><div class="tabbed-labels"><label for="__tabbed_4_1">C#</label><label for="__tabbed_4_2">java</label><label for="__tabbed_4_3">python</label><label for="__tabbed_4_4">javascript</label><label for="__tabbed_4_5">ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-29-1" name="__codelineno-29-1" href="#__codelineno-29-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-29-2" name="__codelineno-29-2" href="#__codelineno-29-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-29-3" name="__codelineno-29-3" href="#__codelineno-29-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/AnularPedido&quot;</span><span class="p">);</span>
<a id="__codelineno-29-4" name="__codelineno-29-4" href="#__codelineno-29-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-29-5" name="__codelineno-29-5" href="#__codelineno-29-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;codigo&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">);</span>
<a id="__codelineno-29-6" name="__codelineno-29-6" href="#__codelineno-29-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-29-7" name="__codelineno-29-7" href="#__codelineno-29-7"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-29-8" name="__codelineno-29-8" href="#__codelineno-29-8"></a>
<a id="__codelineno-29-9" name="__codelineno-29-9" href="#__codelineno-29-9"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-30-1" name="__codelineno-30-1" href="#__codelineno-30-1"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.CloseableHttpResponse</span><span class="p">;</span>
<a id="__codelineno-30-2" name="__codelineno-30-2" href="#__codelineno-30-2"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.HttpPost</span><span class="p">;</span>
<a id="__codelineno-30-3" name="__codelineno-30-3" href="#__codelineno-30-3"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.entity.StringEntity</span><span class="p">;</span>
<a id="__codelineno-30-4" name="__codelineno-30-4" href="#__codelineno-30-4"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.CloseableHttpClient</span><span class="p">;</span>
<a id="__codelineno-30-5" name="__codelineno-30-5" href="#__codelineno-30-5"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.HttpClients</span><span class="p">;</span>
<a id="__codelineno-30-6" name="__codelineno-30-6" href="#__codelineno-30-6"></a><span class="kn">import</span><span class="w"> </span><span class="nn">java.io.IOException</span><span class="p">;</span>
<a id="__codelineno-30-7" name="__codelineno-30-7" href="#__codelineno-30-7"></a>
<a id="__codelineno-30-8" name="__codelineno-30-8" href="#__codelineno-30-8"></a><span class="kd">public</span><span class="w"> </span><span class="kd">class</span> <span class="nc">Main</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-30-9" name="__codelineno-30-9" href="#__codelineno-30-9"></a><span class="w">    </span><span class="kd">public</span><span class="w"> </span><span class="kd">static</span><span class="w"> </span><span class="kt">void</span><span class="w"> </span><span class="nf">main</span><span class="p">(</span><span class="n">String</span><span class="o">[]</span><span class="w"> </span><span class="n">args</span><span class="p">)</span><span class="w"> </span><span class="kd">throws</span><span class="w"> </span><span class="n">IOException</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-30-10" name="__codelineno-30-10" href="#__codelineno-30-10"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-30-11" name="__codelineno-30-11" href="#__codelineno-30-11"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">codigo</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_codigo&quot;</span><span class="p">;</span>
<a id="__codelineno-30-12" name="__codelineno-30-12" href="#__codelineno-30-12"></a><span class="w">        </span><span class="kt">int</span><span class="w"> </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">your_idempresa</span><span class="p">;</span>
<a id="__codelineno-30-13" name="__codelineno-30-13" href="#__codelineno-30-13"></a>
<a id="__codelineno-30-14" name="__codelineno-30-14" href="#__codelineno-30-14"></a><span class="w">        </span><span class="n">CloseableHttpClient</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClients</span><span class="p">.</span><span class="na">createDefault</span><span class="p">();</span>
<a id="__codelineno-30-15" name="__codelineno-30-15" href="#__codelineno-30-15"></a><span class="w">        </span><span class="n">HttpPost</span><span class="w"> </span><span class="n">httpPost</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">HttpPost</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/AnularPedido&quot;</span><span class="p">);</span>
<a id="__codelineno-30-16" name="__codelineno-30-16" href="#__codelineno-30-16"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-30-17" name="__codelineno-30-17" href="#__codelineno-30-17"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;codigo&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">);</span>
<a id="__codelineno-30-18" name="__codelineno-30-18" href="#__codelineno-30-18"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">String</span><span class="p">.</span><span class="na">valueOf</span><span class="p">(</span><span class="n">idempresa</span><span class="p">));</span>
<a id="__codelineno-30-19" name="__codelineno-30-19" href="#__codelineno-30-19"></a>
<a id="__codelineno-30-20" name="__codelineno-30-20" href="#__codelineno-30-20"></a><span class="w">        </span><span class="n">CloseableHttpResponse</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="na">execute</span><span class="p">(</span><span class="n">httpPost</span><span class="p">);</span>
<a id="__codelineno-30-21" name="__codelineno-30-21" href="#__codelineno-30-21"></a>
<a id="__codelineno-30-22" name="__codelineno-30-22" href="#__codelineno-30-22"></a><span class="w">        </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">getEntity</span><span class="p">().</span><span class="na">getContent</span><span class="p">());</span>
<a id="__codelineno-30-23" name="__codelineno-30-23" href="#__codelineno-30-23"></a>
<a id="__codelineno-30-24" name="__codelineno-30-24" href="#__codelineno-30-24"></a><span class="w">        </span><span class="n">client</span><span class="p">.</span><span class="na">close</span><span class="p">();</span>
<a id="__codelineno-30-25" name="__codelineno-30-25" href="#__codelineno-30-25"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-30-26" name="__codelineno-30-26" href="#__codelineno-30-26"></a><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-31-1" name="__codelineno-31-1" href="#__codelineno-31-1"></a>    <span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-31-2" name="__codelineno-31-2" href="#__codelineno-31-2"></a>
<a id="__codelineno-31-3" name="__codelineno-31-3" href="#__codelineno-31-3"></a>    <span class="k">def</span> <span class="nf">anular_pedido</span><span class="p">(</span><span class="n">api_key</span><span class="p">,</span> <span class="n">codigo</span><span class="p">,</span> <span class="n">idempresa</span><span class="p">):</span>
<a id="__codelineno-31-4" name="__codelineno-31-4" href="#__codelineno-31-4"></a>        <span class="n">url</span> <span class="o">=</span> <span class="s2">&quot;https://apis.metasync.com/Pedidos/AnularPedido&quot;</span>
<a id="__codelineno-31-5" name="__codelineno-31-5" href="#__codelineno-31-5"></a>        <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span><span class="s2">&quot;apiKey&quot;</span><span class="p">:</span> <span class="n">api_key</span><span class="p">,</span> <span class="s2">&quot;codigo&quot;</span><span class="p">:</span> <span class="n">codigo</span><span class="p">,</span> <span class="s2">&quot;idempresa&quot;</span><span class="p">:</span> <span class="nb">str</span><span class="p">(</span><span class="n">idempresa</span><span class="p">)}</span>
<a id="__codelineno-31-6" name="__codelineno-31-6" href="#__codelineno-31-6"></a>        <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-31-7" name="__codelineno-31-7" href="#__codelineno-31-7"></a>        <span class="k">return</span> <span class="n">response</span><span class="o">.</span><span class="n">text</span>
<a id="__codelineno-31-8" name="__codelineno-31-8" href="#__codelineno-31-8"></a>
<a id="__codelineno-31-9" name="__codelineno-31-9" href="#__codelineno-31-9"></a>    <span class="c1"># Uso del método</span>
<a id="__codelineno-31-10" name="__codelineno-31-10" href="#__codelineno-31-10"></a>    <span class="n">api_key</span> <span class="o">=</span> <span class="s2">&quot;your_api_key&quot;</span>
<a id="__codelineno-31-11" name="__codelineno-31-11" href="#__codelineno-31-11"></a>    <span class="n">codigo</span> <span class="o">=</span> <span class="s2">&quot;your_codigo&quot;</span>
<a id="__codelineno-31-12" name="__codelineno-31-12" href="#__codelineno-31-12"></a>    <span class="n">idempresa</span> <span class="o">=</span> <span class="n">your_idempresa</span>
<a id="__codelineno-31-13" name="__codelineno-31-13" href="#__codelineno-31-13"></a>    <span class="n">response_content</span> <span class="o">=</span> <span class="n">anular_pedido</span><span class="p">(</span><span class="n">api_key</span><span class="p">,</span> <span class="n">codigo</span><span class="p">,</span> <span class="n">idempresa</span><span class="p">)</span>
<a id="__codelineno-31-14" name="__codelineno-31-14" href="#__codelineno-31-14"></a>    <span class="nb">print</span><span class="p">(</span><span class="n">response_content</span><span class="p">)</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-32-1" name="__codelineno-32-1" href="#__codelineno-32-1"></a><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-32-2" name="__codelineno-32-2" href="#__codelineno-32-2"></a>
<a id="__codelineno-32-3" name="__codelineno-32-3" href="#__codelineno-32-3"></a><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">anularPedido</span><span class="p">(</span><span class="nx">apiKey</span><span class="p">,</span><span class="w"> </span><span class="nx">codigo</span><span class="p">,</span><span class="w"> </span><span class="nx">idempresa</span><span class="p">)</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-32-4" name="__codelineno-32-4" href="#__codelineno-32-4"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;https://apis.metasync.com/Pedidos/AnularPedido&quot;</span><span class="p">;</span>
<a id="__codelineno-32-5" name="__codelineno-32-5" href="#__codelineno-32-5"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-32-6" name="__codelineno-32-6" href="#__codelineno-32-6"></a><span class="w">        </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-32-7" name="__codelineno-32-7" href="#__codelineno-32-7"></a><span class="w">        </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-32-8" name="__codelineno-32-8" href="#__codelineno-32-8"></a><span class="w">            </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-32-9" name="__codelineno-32-9" href="#__codelineno-32-9"></a><span class="w">            </span><span class="s1">&#39;codigo&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">codigo</span><span class="p">,</span>
<a id="__codelineno-32-10" name="__codelineno-32-10" href="#__codelineno-32-10"></a><span class="w">            </span><span class="s1">&#39;idempresa&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">idempresa</span><span class="p">.</span><span class="nx">toString</span><span class="p">()</span>
<a id="__codelineno-32-11" name="__codelineno-32-11" href="#__codelineno-32-11"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-32-12" name="__codelineno-32-12" href="#__codelineno-32-12"></a><span class="w">    </span><span class="p">};</span>
<a id="__codelineno-32-13" name="__codelineno-32-13" href="#__codelineno-32-13"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="nx">url</span><span class="p">,</span><span class="w"> </span><span class="nx">options</span><span class="p">);</span>
<a id="__codelineno-32-14" name="__codelineno-32-14" href="#__codelineno-32-14"></a><span class="w">    </span><span class="k">return</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<a id="__codelineno-32-15" name="__codelineno-32-15" href="#__codelineno-32-15"></a><span class="p">}</span>
<a id="__codelineno-32-16" name="__codelineno-32-16" href="#__codelineno-32-16"></a>
<a id="__codelineno-32-17" name="__codelineno-32-17" href="#__codelineno-32-17"></a><span class="c1">// Uso de la función</span>
<a id="__codelineno-32-18" name="__codelineno-32-18" href="#__codelineno-32-18"></a><span class="kd">const</span><span class="w"> </span><span class="nx">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-32-19" name="__codelineno-32-19" href="#__codelineno-32-19"></a><span class="kd">const</span><span class="w"> </span><span class="nx">codigo</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;your_codigo&quot;</span><span class="p">;</span>
<a id="__codelineno-32-20" name="__codelineno-32-20" href="#__codelineno-32-20"></a><span class="kd">const</span><span class="w"> </span><span class="nx">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">your_idempresa</span><span class="p">;</span>
<a id="__codelineno-32-21" name="__codelineno-32-21" href="#__codelineno-32-21"></a><span class="nx">anularPedido</span><span class="p">(</span><span class="nx">apiKey</span><span class="p">,</span><span class="w"> </span><span class="nx">codigo</span><span class="p">,</span><span class="w"> </span><span class="nx">idempresa</span><span class="p">)</span>
<a id="__codelineno-32-22" name="__codelineno-32-22" href="#__codelineno-32-22"></a><span class="w">    </span><span class="p">.</span><span class="nx">then</span><span class="p">(</span><span class="nx">responseContent</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">responseContent</span><span class="p">))</span>
<a id="__codelineno-32-23" name="__codelineno-32-23" href="#__codelineno-32-23"></a><span class="w">    </span><span class="p">.</span><span class="k">catch</span><span class="p">(</span><span class="nx">error</span><span class="w"> </span><span class="p">=&gt;</span><span class="w"> </span><span class="nx">console</span><span class="p">.</span><span class="nx">error</span><span class="p">(</span><span class="s1">&#39;Error:&#39;</span><span class="p">,</span><span class="w"> </span><span class="nx">error</span><span class="p">));</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-33-1" name="__codelineno-33-1" href="#__codelineno-33-1"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-33-2" name="__codelineno-33-2" href="#__codelineno-33-2"></a>
<a id="__codelineno-33-3" name="__codelineno-33-3" href="#__codelineno-33-3"></a><span class="k">def</span><span class="w"> </span><span class="nf">anular_pedido</span><span class="p">(</span><span class="n">api_key</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">)</span>
<a id="__codelineno-33-4" name="__codelineno-33-4" href="#__codelineno-33-4"></a><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/AnularPedido&quot;</span><span class="p">)</span>
<a id="__codelineno-33-5" name="__codelineno-33-5" href="#__codelineno-33-5"></a><span class="n">http</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-33-6" name="__codelineno-33-6" href="#__codelineno-33-6"></a><span class="n">http</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-33-7" name="__codelineno-33-7" href="#__codelineno-33-7"></a>
<a id="__codelineno-33-8" name="__codelineno-33-8" href="#__codelineno-33-8"></a><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-33-9" name="__codelineno-33-9" href="#__codelineno-33-9"></a><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">api_key</span>
<a id="__codelineno-33-10" name="__codelineno-33-10" href="#__codelineno-33-10"></a><span class="n">request</span><span class="o">[</span><span class="s2">&quot;codigo&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">codigo</span>
<a id="__codelineno-33-11" name="__codelineno-33-11" href="#__codelineno-33-11"></a><span class="n">request</span><span class="o">[</span><span class="s2">&quot;idempresa&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">idempresa</span><span class="o">.</span><span class="n">to_s</span>
<a id="__codelineno-33-12" name="__codelineno-33-12" href="#__codelineno-33-12"></a>
<a id="__codelineno-33-13" name="__codelineno-33-13" href="#__codelineno-33-13"></a><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">http</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-33-14" name="__codelineno-33-14" href="#__codelineno-33-14"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">body</span>
<a id="__codelineno-33-15" name="__codelineno-33-15" href="#__codelineno-33-15"></a><span class="k">end</span>
<a id="__codelineno-33-16" name="__codelineno-33-16" href="#__codelineno-33-16"></a>
<a id="__codelineno-33-17" name="__codelineno-33-17" href="#__codelineno-33-17"></a><span class="c1"># Uso del método</span>
<a id="__codelineno-33-18" name="__codelineno-33-18" href="#__codelineno-33-18"></a><span class="n">api_key</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;your_api_key&quot;</span>
<a id="__codelineno-33-19" name="__codelineno-33-19" href="#__codelineno-33-19"></a><span class="n">codigo</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">&quot;your_codigo&quot;</span>
<a id="__codelineno-33-20" name="__codelineno-33-20" href="#__codelineno-33-20"></a><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">your_idempresa</span>
<a id="__codelineno-33-21" name="__codelineno-33-21" href="#__codelineno-33-21"></a><span class="n">response_content</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">anular_pedido</span><span class="p">(</span><span class="n">api_key</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">)</span>
<a id="__codelineno-33-22" name="__codelineno-33-22" href="#__codelineno-33-22"></a><span class="nb">puts</span><span class="w"> </span><span class="n">response_content</span>
</code></pre></div>
</div>
</div>
</div>
<h3 id="recuperarpedidoorigen"><strong>RecuperarPedidoOrigen</strong><a class="headerlink" href="#recuperarpedidoorigen" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>RecuperarPedidoOrigen</mark>} permite agregar seguimiento a un pedido.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Pedidos/RecuperarPedidoOrigen</p>
</div>
<p><strong>Parámetros de RecuperarPedidoOrigen:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>exeemplo</th>
<th></th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>codigo</code></td>
<td>Header</td>
<td>(3423423)</td>
<td>Required</td>
<td>int32</td>
<td>Codigo del pedido</td>
</tr>
<tr>
<td><code>apikey</code></td>
<td>Header</td>
<td>(MS-5iq5RTxT6EW1BBqTHmGjdK6ZwhQ7C7v9S)</td>
<td>Required</td>
<td>string</td>
<td>Apikey Canal</td>
</tr>
<tr>
<td><code>idempresa</code></td>
<td>Header</td>
<td>(1460)</td>
<td>Required</td>
<td>int32</td>
<td>Identificador local de la empresa.</td>
</tr>
</tbody>
</table>
<h4 id="code-exe_4">Code exe<a class="headerlink" href="#code-exe_4" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="5:5"><input checked="checked" id="__tabbed_5_1" name="__tabbed_5" type="radio" /><input id="__tabbed_5_2" name="__tabbed_5" type="radio" /><input id="__tabbed_5_3" name="__tabbed_5" type="radio" /><input id="__tabbed_5_4" name="__tabbed_5" type="radio" /><input id="__tabbed_5_5" name="__tabbed_5" type="radio" /><div class="tabbed-labels"><label for="__tabbed_5_1">C#</label><label for="__tabbed_5_2">java</label><label for="__tabbed_5_3">python</label><label for="__tabbed_5_4">javascript</label><label for="__tabbed_5_5">ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-34-1" name="__codelineno-34-1" href="#__codelineno-34-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-34-2" name="__codelineno-34-2" href="#__codelineno-34-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-34-3" name="__codelineno-34-3" href="#__codelineno-34-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/RecuperarPedidoOrigen&quot;</span><span class="p">);</span>
<a id="__codelineno-34-4" name="__codelineno-34-4" href="#__codelineno-34-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-34-5" name="__codelineno-34-5" href="#__codelineno-34-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-34-6" name="__codelineno-34-6" href="#__codelineno-34-6"></a>
<a id="__codelineno-34-7" name="__codelineno-34-7" href="#__codelineno-34-7"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-34-8" name="__codelineno-34-8" href="#__codelineno-34-8"></a>
<a id="__codelineno-34-9" name="__codelineno-34-9" href="#__codelineno-34-9"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-35-1" name="__codelineno-35-1" href="#__codelineno-35-1"></a><span class="kn">import</span><span class="w"> </span><span class="nn">okhttp3.*</span><span class="p">;</span>
<a id="__codelineno-35-2" name="__codelineno-35-2" href="#__codelineno-35-2"></a><span class="kn">import</span><span class="w"> </span><span class="nn">java.io.IOException</span><span class="p">;</span>
<a id="__codelineno-35-3" name="__codelineno-35-3" href="#__codelineno-35-3"></a>
<a id="__codelineno-35-4" name="__codelineno-35-4" href="#__codelineno-35-4"></a><span class="kd">public</span><span class="w"> </span><span class="kd">class</span> <span class="nc">Main</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-35-5" name="__codelineno-35-5" href="#__codelineno-35-5"></a><span class="w">    </span><span class="kd">public</span><span class="w"> </span><span class="kd">static</span><span class="w"> </span><span class="kt">void</span><span class="w"> </span><span class="nf">main</span><span class="p">(</span><span class="n">String</span><span class="o">[]</span><span class="w"> </span><span class="n">args</span><span class="p">)</span><span class="w"> </span><span class="kd">throws</span><span class="w"> </span><span class="n">IOException</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-35-6" name="__codelineno-35-6" href="#__codelineno-35-6"></a><span class="w">        </span><span class="n">OkHttpClient</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">OkHttpClient</span><span class="p">();</span>
<a id="__codelineno-35-7" name="__codelineno-35-7" href="#__codelineno-35-7"></a>
<a id="__codelineno-35-8" name="__codelineno-35-8" href="#__codelineno-35-8"></a><span class="w">        </span><span class="n">RequestBody</span><span class="w"> </span><span class="n">body</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">FormBody</span><span class="p">.</span><span class="na">Builder</span><span class="p">()</span>
<a id="__codelineno-35-9" name="__codelineno-35-9" href="#__codelineno-35-9"></a><span class="w">                </span><span class="p">.</span><span class="na">add</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">String</span><span class="p">.</span><span class="na">valueOf</span><span class="p">(</span><span class="n">idempresa</span><span class="p">))</span>
<a id="__codelineno-35-10" name="__codelineno-35-10" href="#__codelineno-35-10"></a><span class="w">                </span><span class="p">.</span><span class="na">build</span><span class="p">();</span>
<a id="__codelineno-35-11" name="__codelineno-35-11" href="#__codelineno-35-11"></a>
<a id="__codelineno-35-12" name="__codelineno-35-12" href="#__codelineno-35-12"></a><span class="w">        </span><span class="n">Request</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">Request</span><span class="p">.</span><span class="na">Builder</span><span class="p">()</span>
<a id="__codelineno-35-13" name="__codelineno-35-13" href="#__codelineno-35-13"></a><span class="w">                </span><span class="p">.</span><span class="na">url</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/RecuperarPedidoOrigen&quot;</span><span class="p">)</span>
<a id="__codelineno-35-14" name="__codelineno-35-14" href="#__codelineno-35-14"></a><span class="w">                </span><span class="p">.</span><span class="na">post</span><span class="p">(</span><span class="n">body</span><span class="p">)</span>
<a id="__codelineno-35-15" name="__codelineno-35-15" href="#__codelineno-35-15"></a><span class="w">                </span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">)</span>
<a id="__codelineno-35-16" name="__codelineno-35-16" href="#__codelineno-35-16"></a><span class="w">                </span><span class="p">.</span><span class="na">build</span><span class="p">();</span>
<a id="__codelineno-35-17" name="__codelineno-35-17" href="#__codelineno-35-17"></a>
<a id="__codelineno-35-18" name="__codelineno-35-18" href="#__codelineno-35-18"></a><span class="w">        </span><span class="k">try</span><span class="w"> </span><span class="p">(</span><span class="n">Response</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="na">newCall</span><span class="p">(</span><span class="n">request</span><span class="p">).</span><span class="na">execute</span><span class="p">())</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-35-19" name="__codelineno-35-19" href="#__codelineno-35-19"></a><span class="w">            </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">body</span><span class="p">().</span><span class="na">string</span><span class="p">());</span>
<a id="__codelineno-35-20" name="__codelineno-35-20" href="#__codelineno-35-20"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-35-21" name="__codelineno-35-21" href="#__codelineno-35-21"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-35-22" name="__codelineno-35-22" href="#__codelineno-35-22"></a><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-36-1" name="__codelineno-36-1" href="#__codelineno-36-1"></a>    <span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-36-2" name="__codelineno-36-2" href="#__codelineno-36-2"></a>    <span class="n">url</span> <span class="o">=</span> <span class="s2">&quot;https://apis.metasync.com/Pedidos/RecuperarPedidoOrigen&quot;</span>
<a id="__codelineno-36-3" name="__codelineno-36-3" href="#__codelineno-36-3"></a>    <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-36-4" name="__codelineno-36-4" href="#__codelineno-36-4"></a>        <span class="s2">&quot;apiKey&quot;</span><span class="p">:</span> <span class="n">apiKey</span><span class="p">,</span>
<a id="__codelineno-36-5" name="__codelineno-36-5" href="#__codelineno-36-5"></a>        <span class="s2">&quot;idempresa&quot;</span><span class="p">:</span> <span class="nb">str</span><span class="p">(</span><span class="n">idempresa</span><span class="p">)</span>
<a id="__codelineno-36-6" name="__codelineno-36-6" href="#__codelineno-36-6"></a>    <span class="p">}</span>
<a id="__codelineno-36-7" name="__codelineno-36-7" href="#__codelineno-36-7"></a><span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-36-8" name="__codelineno-36-8" href="#__codelineno-36-8"></a><span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">)</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-37-1" name="__codelineno-37-1" href="#__codelineno-37-1"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-37-2" name="__codelineno-37-2" href="#__codelineno-37-2"></a>
<a id="__codelineno-37-3" name="__codelineno-37-3" href="#__codelineno-37-3"></a><span class="w">    </span><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">recuperarPedidoOrigen</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-37-4" name="__codelineno-37-4" href="#__codelineno-37-4"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;https://apis.metasync.com/Pedidos/RecuperarPedidoOrigen&#39;</span><span class="p">;</span>
<a id="__codelineno-37-5" name="__codelineno-37-5" href="#__codelineno-37-5"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-37-6" name="__codelineno-37-6" href="#__codelineno-37-6"></a><span class="w">            </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-37-7" name="__codelineno-37-7" href="#__codelineno-37-7"></a><span class="w">            </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-37-8" name="__codelineno-37-8" href="#__codelineno-37-8"></a><span class="w">                </span><span class="s1">&#39;Content-Type&#39;</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;application/json&#39;</span><span class="p">,</span>
<a id="__codelineno-37-9" name="__codelineno-37-9" href="#__codelineno-37-9"></a><span class="w">                </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-37-10" name="__codelineno-37-10" href="#__codelineno-37-10"></a><span class="w">                </span><span class="s1">&#39;idempresa&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">idempresa</span><span class="p">.</span><span class="nx">toString</span><span class="p">()</span>
<a id="__codelineno-37-11" name="__codelineno-37-11" href="#__codelineno-37-11"></a><span class="w">            </span><span class="p">}</span>
<a id="__codelineno-37-12" name="__codelineno-37-12" href="#__codelineno-37-12"></a><span class="w">        </span><span class="p">};</span>
<a id="__codelineno-37-13" name="__codelineno-37-13" href="#__codelineno-37-13"></a>
<a id="__codelineno-37-14" name="__codelineno-37-14" href="#__codelineno-37-14"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="nx">url</span><span class="p">,</span><span class="w"> </span><span class="nx">options</span><span class="p">);</span>
<a id="__codelineno-37-15" name="__codelineno-37-15" href="#__codelineno-37-15"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">json</span><span class="p">();</span>
<a id="__codelineno-37-16" name="__codelineno-37-16" href="#__codelineno-37-16"></a><span class="w">        </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-37-17" name="__codelineno-37-17" href="#__codelineno-37-17"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-38-1" name="__codelineno-38-1" href="#__codelineno-38-1"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-38-2" name="__codelineno-38-2" href="#__codelineno-38-2"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-38-3" name="__codelineno-38-3" href="#__codelineno-38-3"></a>
<a id="__codelineno-38-4" name="__codelineno-38-4" href="#__codelineno-38-4"></a><span class="w">    </span><span class="n">uri</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="o">.</span><span class="n">parse</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/RecuperarPedidoOrigen&quot;</span><span class="p">)</span>
<a id="__codelineno-38-5" name="__codelineno-38-5" href="#__codelineno-38-5"></a><span class="w">    </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">uri</span><span class="p">)</span>
<a id="__codelineno-38-6" name="__codelineno-38-6" href="#__codelineno-38-6"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">apiKey</span>
<a id="__codelineno-38-7" name="__codelineno-38-7" href="#__codelineno-38-7"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;idempresa&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">idempresa</span><span class="o">.</span><span class="n">to_s</span>
<a id="__codelineno-38-8" name="__codelineno-38-8" href="#__codelineno-38-8"></a>
<a id="__codelineno-38-9" name="__codelineno-38-9" href="#__codelineno-38-9"></a><span class="w">    </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">start</span><span class="p">(</span><span class="n">uri</span><span class="o">.</span><span class="n">hostname</span><span class="p">,</span><span class="w"> </span><span class="n">uri</span><span class="o">.</span><span class="n">port</span><span class="p">,</span><span class="w"> </span><span class="ss">use_ssl</span><span class="p">:</span><span class="w"> </span><span class="n">uri</span><span class="o">.</span><span class="n">scheme</span><span class="w"> </span><span class="o">==</span><span class="w"> </span><span class="s2">&quot;https&quot;</span><span class="p">)</span><span class="w"> </span><span class="k">do</span><span class="w"> </span><span class="o">|</span><span class="n">http</span><span class="o">|</span>
<a id="__codelineno-38-10" name="__codelineno-38-10" href="#__codelineno-38-10"></a><span class="w">    </span><span class="n">http</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-38-11" name="__codelineno-38-11" href="#__codelineno-38-11"></a><span class="w">    </span><span class="k">end</span>
<a id="__codelineno-38-12" name="__codelineno-38-12" href="#__codelineno-38-12"></a>
<a id="__codelineno-38-13" name="__codelineno-38-13" href="#__codelineno-38-13"></a><span class="w">    </span><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">body</span>
</code></pre></div>
</div>
</div>
</div>
<h3 id="obtenerseguimiento"><strong>ObtenerSeguimiento</strong><a class="headerlink" href="#obtenerseguimiento" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>ObtenerSeguimiento</mark>} permite agregar seguimiento a un pedido.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Pedidos/ObtenerSeguimiento</p>
</div>
<p><strong>Parámetros de ObtenerSeguimiento:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>exeemplo</th>
<th></th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>codigo</code></td>
<td>Header</td>
<td>(3423423)</td>
<td>Required</td>
<td>int32</td>
<td>Codigo del pedido</td>
</tr>
<tr>
<td><code>apikey</code></td>
<td>Header</td>
<td>(MS-5iq5RTxT6EW1BBqTHmGjdK6ZwhQ7C7v9S)</td>
<td>Required</td>
<td>string</td>
<td>Apikey Canal</td>
</tr>
<tr>
<td><code>idempresa</code></td>
<td>Header</td>
<td>(1460)</td>
<td>Required</td>
<td>int32</td>
<td>Identificador local de la empresa.</td>
</tr>
</tbody>
</table>
<h4 id="code-exe_5">Code exe<a class="headerlink" href="#code-exe_5" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="6:5"><input checked="checked" id="__tabbed_6_1" name="__tabbed_6" type="radio" /><input id="__tabbed_6_2" name="__tabbed_6" type="radio" /><input id="__tabbed_6_3" name="__tabbed_6" type="radio" /><input id="__tabbed_6_4" name="__tabbed_6" type="radio" /><input id="__tabbed_6_5" name="__tabbed_6" type="radio" /><div class="tabbed-labels"><label for="__tabbed_6_1">C#</label><label for="__tabbed_6_2">java</label><label for="__tabbed_6_3">python</label><label for="__tabbed_6_4">javascript</label><label for="__tabbed_6_5">ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-39-1" name="__codelineno-39-1" href="#__codelineno-39-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-39-2" name="__codelineno-39-2" href="#__codelineno-39-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-39-3" name="__codelineno-39-3" href="#__codelineno-39-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/ObtenerSeguimiento&quot;</span><span class="p">);</span>
<a id="__codelineno-39-4" name="__codelineno-39-4" href="#__codelineno-39-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-39-5" name="__codelineno-39-5" href="#__codelineno-39-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;codigo&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">);</span>
<a id="__codelineno-39-6" name="__codelineno-39-6" href="#__codelineno-39-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-39-7" name="__codelineno-39-7" href="#__codelineno-39-7"></a>
<a id="__codelineno-39-8" name="__codelineno-39-8" href="#__codelineno-39-8"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-39-9" name="__codelineno-39-9" href="#__codelineno-39-9"></a>
<a id="__codelineno-39-10" name="__codelineno-39-10" href="#__codelineno-39-10"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-40-1" name="__codelineno-40-1" href="#__codelineno-40-1"></a><span class="w">    </span><span class="n">OkHttpClient</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">OkHttpClient</span><span class="p">();</span>
<a id="__codelineno-40-2" name="__codelineno-40-2" href="#__codelineno-40-2"></a>
<a id="__codelineno-40-3" name="__codelineno-40-3" href="#__codelineno-40-3"></a><span class="w">    </span><span class="n">RequestBody</span><span class="w"> </span><span class="n">body</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">FormBody</span><span class="p">.</span><span class="na">Builder</span><span class="p">()</span>
<a id="__codelineno-40-4" name="__codelineno-40-4" href="#__codelineno-40-4"></a><span class="w">            </span><span class="p">.</span><span class="na">add</span><span class="p">(</span><span class="s">&quot;codigo&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">codigo</span><span class="p">)</span>
<a id="__codelineno-40-5" name="__codelineno-40-5" href="#__codelineno-40-5"></a><span class="w">            </span><span class="p">.</span><span class="na">add</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">String</span><span class="p">.</span><span class="na">valueOf</span><span class="p">(</span><span class="n">idempresa</span><span class="p">))</span>
<a id="__codelineno-40-6" name="__codelineno-40-6" href="#__codelineno-40-6"></a><span class="w">            </span><span class="p">.</span><span class="na">build</span><span class="p">();</span>
<a id="__codelineno-40-7" name="__codelineno-40-7" href="#__codelineno-40-7"></a>
<a id="__codelineno-40-8" name="__codelineno-40-8" href="#__codelineno-40-8"></a><span class="w">    </span><span class="n">Request</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">Request</span><span class="p">.</span><span class="na">Builder</span><span class="p">()</span>
<a id="__codelineno-40-9" name="__codelineno-40-9" href="#__codelineno-40-9"></a><span class="w">            </span><span class="p">.</span><span class="na">url</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/ObtenerSeguimiento&quot;</span><span class="p">)</span>
<a id="__codelineno-40-10" name="__codelineno-40-10" href="#__codelineno-40-10"></a><span class="w">            </span><span class="p">.</span><span class="na">post</span><span class="p">(</span><span class="n">body</span><span class="p">)</span>
<a id="__codelineno-40-11" name="__codelineno-40-11" href="#__codelineno-40-11"></a><span class="w">            </span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">)</span>
<a id="__codelineno-40-12" name="__codelineno-40-12" href="#__codelineno-40-12"></a><span class="w">            </span><span class="p">.</span><span class="na">build</span><span class="p">();</span>
<a id="__codelineno-40-13" name="__codelineno-40-13" href="#__codelineno-40-13"></a>
<a id="__codelineno-40-14" name="__codelineno-40-14" href="#__codelineno-40-14"></a><span class="w">    </span><span class="k">try</span><span class="w"> </span><span class="p">(</span><span class="n">Response</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="na">newCall</span><span class="p">(</span><span class="n">request</span><span class="p">).</span><span class="na">execute</span><span class="p">())</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-40-15" name="__codelineno-40-15" href="#__codelineno-40-15"></a><span class="w">        </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">body</span><span class="p">().</span><span class="na">string</span><span class="p">());</span>
<a id="__codelineno-40-16" name="__codelineno-40-16" href="#__codelineno-40-16"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-41-1" name="__codelineno-41-1" href="#__codelineno-41-1"></a>    <span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-41-2" name="__codelineno-41-2" href="#__codelineno-41-2"></a>    <span class="n">url</span> <span class="o">=</span> <span class="s2">&quot;https://apis.metasync.com/Pedidos/ObtenerSeguimiento&quot;</span>
<a id="__codelineno-41-3" name="__codelineno-41-3" href="#__codelineno-41-3"></a>    <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-41-4" name="__codelineno-41-4" href="#__codelineno-41-4"></a>        <span class="s2">&quot;apiKey&quot;</span><span class="p">:</span> <span class="n">apiKey</span><span class="p">,</span>
<a id="__codelineno-41-5" name="__codelineno-41-5" href="#__codelineno-41-5"></a>        <span class="s2">&quot;codigo&quot;</span><span class="p">:</span> <span class="n">codigo</span><span class="p">,</span>
<a id="__codelineno-41-6" name="__codelineno-41-6" href="#__codelineno-41-6"></a>        <span class="s2">&quot;idempresa&quot;</span><span class="p">:</span> <span class="nb">str</span><span class="p">(</span><span class="n">idempresa</span><span class="p">)</span>
<a id="__codelineno-41-7" name="__codelineno-41-7" href="#__codelineno-41-7"></a>    <span class="p">}</span>
<a id="__codelineno-41-8" name="__codelineno-41-8" href="#__codelineno-41-8"></a>    <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-41-9" name="__codelineno-41-9" href="#__codelineno-41-9"></a>    <span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">)</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-42-1" name="__codelineno-42-1" href="#__codelineno-42-1"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-42-2" name="__codelineno-42-2" href="#__codelineno-42-2"></a>
<a id="__codelineno-42-3" name="__codelineno-42-3" href="#__codelineno-42-3"></a><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">obtenerSeguimiento</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-42-4" name="__codelineno-42-4" href="#__codelineno-42-4"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;https://apis.metasync.com/Pedidos/ObtenerSeguimiento&#39;</span><span class="p">;</span>
<a id="__codelineno-42-5" name="__codelineno-42-5" href="#__codelineno-42-5"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-42-6" name="__codelineno-42-6" href="#__codelineno-42-6"></a><span class="w">        </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-42-7" name="__codelineno-42-7" href="#__codelineno-42-7"></a><span class="w">        </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-42-8" name="__codelineno-42-8" href="#__codelineno-42-8"></a><span class="w">            </span><span class="s1">&#39;Content-Type&#39;</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;application/json&#39;</span><span class="p">,</span>
<a id="__codelineno-42-9" name="__codelineno-42-9" href="#__codelineno-42-9"></a><span class="w">            </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-42-10" name="__codelineno-42-10" href="#__codelineno-42-10"></a><span class="w">            </span><span class="s1">&#39;codigo&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">codigo</span><span class="p">,</span>
<a id="__codelineno-42-11" name="__codelineno-42-11" href="#__codelineno-42-11"></a><span class="w">            </span><span class="s1">&#39;idempresa&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">idempresa</span><span class="p">.</span><span class="nx">toString</span><span class="p">()</span>
<a id="__codelineno-42-12" name="__codelineno-42-12" href="#__codelineno-42-12"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-42-13" name="__codelineno-42-13" href="#__codelineno-42-13"></a><span class="w">    </span><span class="p">};</span>
<a id="__codelineno-42-14" name="__codelineno-42-14" href="#__codelineno-42-14"></a>
<a id="__codelineno-42-15" name="__codelineno-42-15" href="#__codelineno-42-15"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="nx">url</span><span class="p">,</span><span class="w"> </span><span class="nx">options</span><span class="p">);</span>
<a id="__codelineno-42-16" name="__codelineno-42-16" href="#__codelineno-42-16"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">json</span><span class="p">();</span>
<a id="__codelineno-42-17" name="__codelineno-42-17" href="#__codelineno-42-17"></a><span class="w">    </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-42-18" name="__codelineno-42-18" href="#__codelineno-42-18"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-43-1" name="__codelineno-43-1" href="#__codelineno-43-1"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-43-2" name="__codelineno-43-2" href="#__codelineno-43-2"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-43-3" name="__codelineno-43-3" href="#__codelineno-43-3"></a>
<a id="__codelineno-43-4" name="__codelineno-43-4" href="#__codelineno-43-4"></a><span class="n">uri</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="o">.</span><span class="n">parse</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/ObtenerSeguimiento&quot;</span><span class="p">)</span>
<a id="__codelineno-43-5" name="__codelineno-43-5" href="#__codelineno-43-5"></a><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">uri</span><span class="p">)</span>
<a id="__codelineno-43-6" name="__codelineno-43-6" href="#__codelineno-43-6"></a><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">apiKey</span>
<a id="__codelineno-43-7" name="__codelineno-43-7" href="#__codelineno-43-7"></a><span class="n">request</span><span class="o">[</span><span class="s2">&quot;codigo&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">codigo</span>
<a id="__codelineno-43-8" name="__codelineno-43-8" href="#__codelineno-43-8"></a><span class="n">request</span><span class="o">[</span><span class="s2">&quot;idempresa&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">idempresa</span><span class="o">.</span><span class="n">to_s</span>
<a id="__codelineno-43-9" name="__codelineno-43-9" href="#__codelineno-43-9"></a>
<a id="__codelineno-43-10" name="__codelineno-43-10" href="#__codelineno-43-10"></a><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">start</span><span class="p">(</span><span class="n">uri</span><span class="o">.</span><span class="n">hostname</span><span class="p">,</span><span class="w"> </span><span class="n">uri</span><span class="o">.</span><span class="n">port</span><span class="p">,</span><span class="w"> </span><span class="ss">use_ssl</span><span class="p">:</span><span class="w"> </span><span class="n">uri</span><span class="o">.</span><span class="n">scheme</span><span class="w"> </span><span class="o">==</span><span class="w"> </span><span class="s2">&quot;https&quot;</span><span class="p">)</span><span class="w"> </span><span class="k">do</span><span class="w"> </span><span class="o">|</span><span class="n">http</span><span class="o">|</span>
<a id="__codelineno-43-11" name="__codelineno-43-11" href="#__codelineno-43-11"></a><span class="n">http</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-43-12" name="__codelineno-43-12" href="#__codelineno-43-12"></a><span class="k">end</span>
<a id="__codelineno-43-13" name="__codelineno-43-13" href="#__codelineno-43-13"></a>
<a id="__codelineno-43-14" name="__codelineno-43-14" href="#__codelineno-43-14"></a><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">body</span>
</code></pre></div>
</div>
</div>
</div>







  
  






                
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
    
    
    <script id="__config" type="application/json">{"base": "../../..", "features": ["navigation.path", "navigation.expand", "navigation.tabs", "navigation.sections", "toc.integrate", "navigation.top", "navigation.footer", "navigation.indexes", "navigation.tracking", "search.suggest", "search.highlight", "content.tabs.link", "content.code.annotation"], "search": "../../../assets/javascripts/workers/search.b8dbb3d2.min.js", "translations": {"clipboard.copied": "Copiado al portapapeles", "clipboard.copy": "Copiar al portapapeles", "search.result.more.one": "1 m\u00e1s en esta p\u00e1gina", "search.result.more.other": "# m\u00e1s en esta p\u00e1gina", "search.result.none": "No se encontraron documentos", "search.result.one": "1 documento encontrado", "search.result.other": "# documentos encontrados", "search.result.placeholder": "Teclee para comenzar b\u00fasqueda", "search.result.term.missing": "Falta", "select.version": "Seleccionar versi\u00f3n"}}</script>
    
    
      <script src="../../../assets/javascripts/bundle.3220b9d7.min.js"></script>
      
    
 
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