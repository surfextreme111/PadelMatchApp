

<%@ Page Language="C#" ContentType="text/html; charset=utf-8" %>
<%@ Import Namespace="System.Net" %>

<!DOCTYPE html>    
                
<html lang="es" class="no-js">
  <head>
    
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      
      
      
      
      
      
      <link rel="icon" href="../../../images/favicon.jpg">
      <meta name="generator" content="mkdocs-1.5.3, mkdocs-material-9.5.18">
    
    
      
        <title>APIInventario - PadelMatch Docs</title>
      
    
    
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
            
              APIInventario
            
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
                
                  


  <h1>APIInventario</h1>

<div class="admonition note">
<p class="admonition-title">Descripción ApiInventario</p>
<p>Las capacidades de la Api de Almacén abarcan una variedad de funciones, las cuales incluyen la recuperación de cambios en el canal, la recuperación de cambios en el canal para una empresa específica, la recuperación de cambios en vehículos para el canal, la recuperación de cambios en vehículos para una empresa específica, conteo de piezas, conteo de piezas para una empresa específica, conteo de vehículos y conteo de vehículos para una empresa específica.</p>
<p>Todos estos métodos requieren el uso de una API key, la cual será proporcionada por nuestro soporte, garantizando así la seguridad y la autorización adecuadas para acceder a estas funciones.</p>
</div>
<div class="admonition tip">
<p class="admonition-title">Casos de uso</p>
<p>1 - Si necesitas recuperar las piezas actualizadas a partir de una fecha con sus correspondientes vehiculos en el canal, podrías utilizar el método <strong>RecuperarCambiosCanal</strong>. Este método requiere el uso de tu <strong>Apikey</strong> <code>Header</code>, la <strong>fecha</strong> <code>Header</code> por la cual deseamos obtener piezas a partir de una fecha, un <strong>lastid</strong> <code>Header</code> para poder navegar por la paginación y un offset para recuperar una cantidad la cual su maximo sería de 1000. <a href="https://testdocs.metasync.com/es/APIS/ApiInventario/#result_set">Ejemplo</a></p>
<p>2 - Si deseas obtener piezas actualizadas de una empresa específica, puedes utilizar el método <strong>RecuperarCambiosCanalEmpresa</strong>. Este método es exáctamente igual al anterior y necesita los mismos parámetros solo que si le pasamos el parámetro opcional <code>idempresa</code> nos devolverá solo piezas y vehiculos de una empresa.</p>
<p>3 - Para obtener los cambios en vehículos para el canal, puedes usar el método <strong>RecuperarCambiosVehiculosCanal</strong>, pasando tu <strong>Apikey</strong> por <code>Header</code> , la <strong>fecha</strong> <code>Header</code>, el <strong>lastid</strong> que en un principio debe ser 0 y posteriormente utilizar los siguientes lastid para recorrer la paginación y un <strong>offset</strong> que como máximo será 1000. <a href="https://testdocs.metasync.com/es/APIS/ApiInventario/#result_set">Ejemplo</a></p>
<p>4 - Si necesitas recuperar los últimos vehículos actualizados para una empresa específica, puedes utilizar el método <strong>RecuperarCambiosVehiculosCanalEmpresa</strong>. Este método requerirá tu <strong>Apikey</strong> por <code>Header</code> , la <strong>fecha</strong> <code>Header</code>, el <strong>lastid</strong> que en un principio debe ser 0 y posteriormente utilizar los siguientes lastid para recorrer la paginación, un offset que como máximo será 1000 y un último parámetro opcional <strong>idempresa</strong> tambien por <code>Header</code>.</p>
<p>5 - Si deseas contar las piezas en el almacén, puedes utilizar el método <strong>ConteoPiezas</strong>, pasando tu <strong>Apikey</strong> por <code>Header</code> y una <strong>fecha</strong> a partir de la cual te gustaria saber cuantas piezas se han introducido o actualizado.</p>
<p>6 - Para realizar un conteo de piezas específicas para una empresa, puedes usar el método <strong>ConteoPiezasEmpresa</strong>, pasando tu <strong>Apikey</strong> <code>Header</code>, una <strong>fecha</strong> a partir de la cual te gustaria saber cuantas piezas se han introducido o actualizado y el <strong>idempresa</strong> como <code>Header</code>.</p>
<p>7 -  Si necesitas contar los vehículos, puedes utilizar el método <strong>ConteoVehiculos</strong>, pasando tu <strong>Apikey</strong> por <code>Header</code> y una fecha a partir de la cual obtendrás vechiculos actualizados o vehiculos nuevos.</p>
<p>8 - Para realizar un conteo de vehículos específicos para una empresa, puedes usar el método <strong>ConteoVehiculosEmpresa</strong>, pasando tu <strong>Apikey</strong> por <code>Header</code>, una <strong>fecha</strong> por <code>Header</code> y también el <strong>idempresa</strong> <code>Header</code>.</p>
</div>
<div class="admonition warning">
<p class="admonition-title">Api almacen advertencia de algo?</p>
<p>Api almacen advertencia de algo?</p>
</div>
<div class="admonition warning">
<p class="admonition-title">Api almacen advertencia de algo?</p>
<p>Api almacen advertencia de algo?</p>
</div>
<div class="admonition info">
<p class="admonition-title">RESPUESTAS API ALMACEN</p>
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
<p class="annotate">Enum EstadoVehiculo --&gt; (1) &lt;--</p>
<p class="annotate">Enum Ubicacion --&gt; (2) &lt;--</p>
<ol>
<li>
<p><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">EstadoVehiculo</span><pre><span></span><code><a id="__codelineno-0-1" name="__codelineno-0-1" href="#__codelineno-0-1"></a><span class="p">{</span>
<a id="__codelineno-0-2" name="__codelineno-0-2" href="#__codelineno-0-2"></a><span class="w">  </span><span class="nt">&quot;EnTramite&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-0-3" name="__codelineno-0-3" href="#__codelineno-0-3"></a><span class="w">  </span><span class="nt">&quot;Revisado&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-0-4" name="__codelineno-0-4" href="#__codelineno-0-4"></a><span class="w">  </span><span class="nt">&quot;Despiezado&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2</span><span class="p">,</span>
<a id="__codelineno-0-5" name="__codelineno-0-5" href="#__codelineno-0-5"></a><span class="w">  </span><span class="nt">&quot;Calculado&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">3</span><span class="p">,</span>
<a id="__codelineno-0-6" name="__codelineno-0-6" href="#__codelineno-0-6"></a><span class="w">  </span><span class="nt">&quot;EnCampa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">4</span><span class="p">,</span>
<a id="__codelineno-0-7" name="__codelineno-0-7" href="#__codelineno-0-7"></a><span class="w">  </span><span class="nt">&quot;Destruido&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">5</span><span class="p">,</span>
<a id="__codelineno-0-8" name="__codelineno-0-8" href="#__codelineno-0-8"></a><span class="w">  </span><span class="nt">&quot;Procesando&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">6</span><span class="p">,</span>
<a id="__codelineno-0-9" name="__codelineno-0-9" href="#__codelineno-0-9"></a><span class="w">  </span><span class="nt">&quot;Baja&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">7</span><span class="p">,</span>
<a id="__codelineno-0-10" name="__codelineno-0-10" href="#__codelineno-0-10"></a><span class="w">  </span><span class="nt">&quot;EnVenta&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">8</span><span class="p">,</span>
<a id="__codelineno-0-11" name="__codelineno-0-11" href="#__codelineno-0-11"></a><span class="w">  </span><span class="nt">&quot;Sideo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">9</span><span class="p">,</span>
<a id="__codelineno-0-12" name="__codelineno-0-12" href="#__codelineno-0-12"></a><span class="w">  </span><span class="nt">&quot;ErrorCalculo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">10</span><span class="p">,</span>
<a id="__codelineno-0-13" name="__codelineno-0-13" href="#__codelineno-0-13"></a><span class="w">  </span><span class="nt">&quot;Valorado&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">11</span><span class="p">,</span>
<a id="__codelineno-0-14" name="__codelineno-0-14" href="#__codelineno-0-14"></a><span class="w">  </span><span class="nt">&quot;Descontaminado&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">12</span><span class="p">,</span>
<a id="__codelineno-0-15" name="__codelineno-0-15" href="#__codelineno-0-15"></a><span class="w">  </span><span class="nt">&quot;Tasado&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">13</span><span class="p">,</span>
<a id="__codelineno-0-16" name="__codelineno-0-16" href="#__codelineno-0-16"></a><span class="w">  </span><span class="nt">&quot;ErrorAugias&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">14</span><span class="p">,</span>
<a id="__codelineno-0-17" name="__codelineno-0-17" href="#__codelineno-0-17"></a><span class="w">  </span><span class="nt">&quot;Otros&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">15</span>
<a id="__codelineno-0-18" name="__codelineno-0-18" href="#__codelineno-0-18"></a><span class="p">}</span>
</code></pre></div></p>
</li>
<li>
<p><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">Ubicacion</span><pre><span></span><code><a id="__codelineno-1-1" name="__codelineno-1-1" href="#__codelineno-1-1"></a><span class="p">{</span>
<a id="__codelineno-1-2" name="__codelineno-1-2" href="#__codelineno-1-2"></a><span class="w">  </span><span class="nt">&quot;EnProcesoDedesMontaje&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-1-3" name="__codelineno-1-3" href="#__codelineno-1-3"></a><span class="w">  </span><span class="nt">&quot;Almacenada&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-1-4" name="__codelineno-1-4" href="#__codelineno-1-4"></a><span class="w">  </span><span class="nt">&quot;ConIncidencia&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2</span><span class="p">,</span>
<a id="__codelineno-1-5" name="__codelineno-1-5" href="#__codelineno-1-5"></a><span class="w">  </span><span class="nt">&quot;EnReparto&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">3</span><span class="p">,</span>
<a id="__codelineno-1-6" name="__codelineno-1-6" href="#__codelineno-1-6"></a><span class="w">  </span><span class="nt">&quot;EnControlDeCalidad&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">4</span><span class="p">,</span>
<a id="__codelineno-1-7" name="__codelineno-1-7" href="#__codelineno-1-7"></a><span class="w">  </span><span class="nt">&quot;Desechada&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">5</span><span class="p">,</span>
<a id="__codelineno-1-8" name="__codelineno-1-8" href="#__codelineno-1-8"></a><span class="w">  </span><span class="nt">&quot;EnMostrador&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">6</span><span class="p">,</span>
<a id="__codelineno-1-9" name="__codelineno-1-9" href="#__codelineno-1-9"></a><span class="w">  </span><span class="nt">&quot;MontadaRevisada&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">7</span><span class="p">,</span>
<a id="__codelineno-1-10" name="__codelineno-1-10" href="#__codelineno-1-10"></a><span class="w">  </span><span class="nt">&quot;Vendida&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">8</span><span class="p">,</span>
<a id="__codelineno-1-11" name="__codelineno-1-11" href="#__codelineno-1-11"></a><span class="w">  </span><span class="nt">&quot;SituacionDesconocida&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">9</span>
<a id="__codelineno-1-12" name="__codelineno-1-12" href="#__codelineno-1-12"></a><span class="p">}</span>
</code></pre></div></p>
</li>
</ol>
<h2 id="clases-apiinventario">Clases ApiInventario<a class="headerlink" href="#clases-apiinventario" title="Permanent link">&para;</a></h2>
<p><div class="highlight"><span class="filename">Pieza</span><pre><span></span><code><a id="__codelineno-2-1" name="__codelineno-2-1" href="#__codelineno-2-1"></a>public class PiezaExport {
<a id="__codelineno-2-2" name="__codelineno-2-2" href="#__codelineno-2-2"></a>    public int IdEmpresa { get; set; }
<a id="__codelineno-2-3" name="__codelineno-2-3" href="#__codelineno-2-3"></a>    public int RefLocal { get; set; }
<a id="__codelineno-2-4" name="__codelineno-2-4" href="#__codelineno-2-4"></a>    public int IdVehiculo { get; set; }
<a id="__codelineno-2-5" name="__codelineno-2-5" href="#__codelineno-2-5"></a>    public string CodFamilia { get; set; } = &quot;&quot;;
<a id="__codelineno-2-6" name="__codelineno-2-6" href="#__codelineno-2-6"></a>    public string DescripcionFamilia { get; set; } = &quot;&quot;;
<a id="__codelineno-2-7" name="__codelineno-2-7" href="#__codelineno-2-7"></a>    public string CodArticulo { get; set; } = &quot;&quot;;
<a id="__codelineno-2-8" name="__codelineno-2-8" href="#__codelineno-2-8"></a>    public string DescripcionArticulo { get; set; } = &quot;&quot;;
<a id="__codelineno-2-9" name="__codelineno-2-9" href="#__codelineno-2-9"></a>    public string CodVersion { get; set; } = &quot;&quot;;
<a id="__codelineno-2-10" name="__codelineno-2-10" href="#__codelineno-2-10"></a>    public string RefPrincipal { get; set; } = &quot;&quot;;
<a id="__codelineno-2-11" name="__codelineno-2-11" href="#__codelineno-2-11"></a>    public int Precio { get; set; }
<a id="__codelineno-2-12" name="__codelineno-2-12" href="#__codelineno-2-12"></a>    public int AnyoStock { get; set; }
<a id="__codelineno-2-13" name="__codelineno-2-13" href="#__codelineno-2-13"></a>    //public int Cantidad { get; set; }
<a id="__codelineno-2-14" name="__codelineno-2-14" href="#__codelineno-2-14"></a>    public int Peso { get; set; }
<a id="__codelineno-2-15" name="__codelineno-2-15" href="#__codelineno-2-15"></a>    public int Ubicacion { get; set; }
<a id="__codelineno-2-16" name="__codelineno-2-16" href="#__codelineno-2-16"></a>    public string Observaciones { get; set; } = &quot;&quot;;
<a id="__codelineno-2-17" name="__codelineno-2-17" href="#__codelineno-2-17"></a>    public int Reserva { get; set; }
<a id="__codelineno-2-18" name="__codelineno-2-18" href="#__codelineno-2-18"></a>    public int TipoMaterial { get; set; }
<a id="__codelineno-2-19" name="__codelineno-2-19" href="#__codelineno-2-19"></a>    public string[] UrlsImgs { get; set; } = new string[0];
<a id="__codelineno-2-20" name="__codelineno-2-20" href="#__codelineno-2-20"></a>    public DateTime FechaMod { get; set; }
<a id="__codelineno-2-21" name="__codelineno-2-21" href="#__codelineno-2-21"></a>}
</code></pre></div>
<div class="highlight"><span class="filename">Vehiculo</span><pre><span></span><code><a id="__codelineno-3-1" name="__codelineno-3-1" href="#__codelineno-3-1"></a>public class VehiculoExport {
<a id="__codelineno-3-2" name="__codelineno-3-2" href="#__codelineno-3-2"></a>    public int IdLocal { get; set; }
<a id="__codelineno-3-3" name="__codelineno-3-3" href="#__codelineno-3-3"></a>        public int IdEmpresa {get; set; }
<a id="__codelineno-3-4" name="__codelineno-3-4" href="#__codelineno-3-4"></a>        public DateTime FechaMod { get; set; }
<a id="__codelineno-3-5" name="__codelineno-3-5" href="#__codelineno-3-5"></a>        public string Codigo { get; set; } = &quot;&quot;;
<a id="__codelineno-3-6" name="__codelineno-3-6" href="#__codelineno-3-6"></a>        public int[] Estado {get; set; } = new int[0];
<a id="__codelineno-3-7" name="__codelineno-3-7" href="#__codelineno-3-7"></a>        public string Bastidor { get; set; } = &quot;&quot;;
<a id="__codelineno-3-8" name="__codelineno-3-8" href="#__codelineno-3-8"></a>        public string Matricula { get; set; } = &quot;&quot;;
<a id="__codelineno-3-9" name="__codelineno-3-9" href="#__codelineno-3-9"></a>        public string Color { get; set; } = &quot;&quot;;
<a id="__codelineno-3-10" name="__codelineno-3-10" href="#__codelineno-3-10"></a>        public int Kilometraje {get; set; }
<a id="__codelineno-3-11" name="__codelineno-3-11" href="#__codelineno-3-11"></a>        public int AnyoVehiculo { get; set; }
<a id="__codelineno-3-12" name="__codelineno-3-12" href="#__codelineno-3-12"></a>        public string CodigoMotor { get; set; } = &quot;&quot;;
<a id="__codelineno-3-13" name="__codelineno-3-13" href="#__codelineno-3-13"></a>        public string CodigoCambio { get; set; } = &quot;&quot;;
<a id="__codelineno-3-14" name="__codelineno-3-14" href="#__codelineno-3-14"></a>        public string Observaciones { get; set; } = &quot;&quot;;
<a id="__codelineno-3-15" name="__codelineno-3-15" href="#__codelineno-3-15"></a>        public string[] UrlsImgs { get; set; } = new string[0];
<a id="__codelineno-3-16" name="__codelineno-3-16" href="#__codelineno-3-16"></a>        public string CodMarca { get; set; } = &quot;&quot;;
<a id="__codelineno-3-17" name="__codelineno-3-17" href="#__codelineno-3-17"></a>        public string NombreMarca{get; set;} = &quot;&quot;;
<a id="__codelineno-3-18" name="__codelineno-3-18" href="#__codelineno-3-18"></a>        public string CodModelo{get; set;} = &quot;&quot;;
<a id="__codelineno-3-19" name="__codelineno-3-19" href="#__codelineno-3-19"></a>        public string NombreModelo{get; set;} = &quot;&quot;;
<a id="__codelineno-3-20" name="__codelineno-3-20" href="#__codelineno-3-20"></a>        public string CodVersion{get; set;} = &quot;&quot;;
<a id="__codelineno-3-21" name="__codelineno-3-21" href="#__codelineno-3-21"></a>        public string NombreVersion{get; set;} = &quot;&quot;;
<a id="__codelineno-3-22" name="__codelineno-3-22" href="#__codelineno-3-22"></a>        public string? TipoVersion{get; set;}
<a id="__codelineno-3-23" name="__codelineno-3-23" href="#__codelineno-3-23"></a>        public string? Combustible{get; set;}
<a id="__codelineno-3-24" name="__codelineno-3-24" href="#__codelineno-3-24"></a>        public int? Puertas{get; set;}
<a id="__codelineno-3-25" name="__codelineno-3-25" href="#__codelineno-3-25"></a>        public int? AnyoInicio{get; set;}
<a id="__codelineno-3-26" name="__codelineno-3-26" href="#__codelineno-3-26"></a>        public int? AnyoFin{get; set;}
<a id="__codelineno-3-27" name="__codelineno-3-27" href="#__codelineno-3-27"></a>        public string[]? TiposMotor{get; set;}
<a id="__codelineno-3-28" name="__codelineno-3-28" href="#__codelineno-3-28"></a>        public double? PotenciaHP{get; set;}
<a id="__codelineno-3-29" name="__codelineno-3-29" href="#__codelineno-3-29"></a>        public double? PotenciaKw{get; set;}
<a id="__codelineno-3-30" name="__codelineno-3-30" href="#__codelineno-3-30"></a>        public double? Cilindrada{get; set;}
<a id="__codelineno-3-31" name="__codelineno-3-31" href="#__codelineno-3-31"></a>        public string? Transmision{get; set;}
<a id="__codelineno-3-32" name="__codelineno-3-32" href="#__codelineno-3-32"></a>        public string? Alimentacion{get; set;}
<a id="__codelineno-3-33" name="__codelineno-3-33" href="#__codelineno-3-33"></a>        public int? NumMarchas{get; set;}
<a id="__codelineno-3-34" name="__codelineno-3-34" href="#__codelineno-3-34"></a>
<a id="__codelineno-3-35" name="__codelineno-3-35" href="#__codelineno-3-35"></a>        public string? RVCode{get; set;}
<a id="__codelineno-3-36" name="__codelineno-3-36" href="#__codelineno-3-36"></a>
<a id="__codelineno-3-37" name="__codelineno-3-37" href="#__codelineno-3-37"></a>        public string? Ktype{get; set;}
<a id="__codelineno-3-38" name="__codelineno-3-38" href="#__codelineno-3-38"></a>}
</code></pre></div></p>
<div class="highlight"><span class="filename">Paginacion</span><pre><span></span><code><a id="__codelineno-4-1" name="__codelineno-4-1" href="#__codelineno-4-1"></a>public class Paginacion
<a id="__codelineno-4-2" name="__codelineno-4-2" href="#__codelineno-4-2"></a>{
<a id="__codelineno-4-3" name="__codelineno-4-3" href="#__codelineno-4-3"></a>    public int Count { get; set; }
<a id="__codelineno-4-4" name="__codelineno-4-4" href="#__codelineno-4-4"></a>    public int Total { get; set; }
<a id="__codelineno-4-5" name="__codelineno-4-5" href="#__codelineno-4-5"></a>    public int Limit { get; set; }
<a id="__codelineno-4-6" name="__codelineno-4-6" href="#__codelineno-4-6"></a>    public int Offset { get; set; }
<a id="__codelineno-4-7" name="__codelineno-4-7" href="#__codelineno-4-7"></a>}
</code></pre></div>
<p><div class="highlight"><span class="filename">RespuestaRecuperarCambiosCanal</span><pre><span></span><code><a id="__codelineno-5-1" name="__codelineno-5-1" href="#__codelineno-5-1"></a>public class RespuestaRecuperarCambiosCanal
<a id="__codelineno-5-2" name="__codelineno-5-2" href="#__codelineno-5-2"></a>{
<a id="__codelineno-5-3" name="__codelineno-5-3" href="#__codelineno-5-3"></a>    public PiezaExport[] Piezas { get; set; }
<a id="__codelineno-5-4" name="__codelineno-5-4" href="#__codelineno-5-4"></a>    public VehiculoExport[] Vehiculos { get; set; }
<a id="__codelineno-5-5" name="__codelineno-5-5" href="#__codelineno-5-5"></a>    public Result_Set result_set { get; set; }
<a id="__codelineno-5-6" name="__codelineno-5-6" href="#__codelineno-5-6"></a>}
</code></pre></div>
<div class="highlight"><span class="filename">RespuestaRecuperarCambiosCanalEmpresa</span><pre><span></span><code><a id="__codelineno-6-1" name="__codelineno-6-1" href="#__codelineno-6-1"></a>public class RespuestaRecuperarCambiosCanalEmpresa
<a id="__codelineno-6-2" name="__codelineno-6-2" href="#__codelineno-6-2"></a>{
<a id="__codelineno-6-3" name="__codelineno-6-3" href="#__codelineno-6-3"></a>    public PiezaExport[] Piezas { get; set; }
<a id="__codelineno-6-4" name="__codelineno-6-4" href="#__codelineno-6-4"></a>    public VehiculoExport[] Vehiculos { get; set; }
<a id="__codelineno-6-5" name="__codelineno-6-5" href="#__codelineno-6-5"></a>    public Result_Set result_set { get; set; }
<a id="__codelineno-6-6" name="__codelineno-6-6" href="#__codelineno-6-6"></a>}
</code></pre></div>
<div class="highlight"><span class="filename">RespuestaRecuperarCambiosVehiculosCanal</span><pre><span></span><code><a id="__codelineno-7-1" name="__codelineno-7-1" href="#__codelineno-7-1"></a>public class RespuestaRecuperarCambiosVehiculosCanal
<a id="__codelineno-7-2" name="__codelineno-7-2" href="#__codelineno-7-2"></a>{
<a id="__codelineno-7-3" name="__codelineno-7-3" href="#__codelineno-7-3"></a>    public List&lt;VehiculoExport&gt;? Vehiculos { get; set; }
<a id="__codelineno-7-4" name="__codelineno-7-4" href="#__codelineno-7-4"></a>    public Paginacion? result_set { get; set; }
<a id="__codelineno-7-5" name="__codelineno-7-5" href="#__codelineno-7-5"></a>}
</code></pre></div>
<div class="highlight"><span class="filename">RespuestaRecuperarCambiosVehiculosCanalEmpresa</span><pre><span></span><code><a id="__codelineno-8-1" name="__codelineno-8-1" href="#__codelineno-8-1"></a>public class RespuestaRecuperarCambiosVehiculosCanalEmpresa
<a id="__codelineno-8-2" name="__codelineno-8-2" href="#__codelineno-8-2"></a>{
<a id="__codelineno-8-3" name="__codelineno-8-3" href="#__codelineno-8-3"></a>    public List&lt;VehiculoExport&gt;? Vehiculos { get; set; }
<a id="__codelineno-8-4" name="__codelineno-8-4" href="#__codelineno-8-4"></a>    public Paginacion? result_set { get; set; }
<a id="__codelineno-8-5" name="__codelineno-8-5" href="#__codelineno-8-5"></a>}
</code></pre></div></p>
<h2 id="metodos-apiinventario">Metodos ApiInventario<a class="headerlink" href="#metodos-apiinventario" title="Permanent link">&para;</a></h2>
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
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#recuperarcambioscanal">RecuperarCambiosCanal</a></td>
<td>Get</td>
</tr>
<tr>
<td>2</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#recuperarcambioscanalempresa">RecuperarCambiosCanalEmpresa</a></td>
<td>Get</td>
</tr>
<tr>
<td>3</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#recuperarcambiosvehiculoscanal">RecuperarCambiosVehiculosCanal</a></td>
<td>Get</td>
</tr>
<tr>
<td>4</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#recuperarcambiosvehiculoscanalempresa">RecuperarCambiosVehiculosCanalEmpresa</a></td>
<td>Get</td>
</tr>
<tr>
<td>5</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#conteopiezas">ConteoPiezas</a></td>
<td>Get</td>
</tr>
<tr>
<td>6</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#conteopiezasempresa">ConteoPiezasEmpresa</a></td>
<td>Get</td>
</tr>
<tr>
<td>7</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#conteovehiculos">ConteoVehiculos</a></td>
<td>Get</td>
</tr>
<tr>
<td>8</td>
<td><a href="https://testdocs.metasync.com/es/APIS/APIPedidos/#conteovehiculosempresa">ConteoVehiculosEmpresa</a></td>
<td>Get</td>
</tr>
</tbody>
</table>
<h3 id="recuperarcambioscanal"><strong>RecuperarCambiosCanal</strong><a class="headerlink" href="#recuperarcambioscanal" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método <mark>RecuperarCambiosCanal</mark> permite recuperar información general sobre el inventario de las empresas.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Almacen/RecuperarCambiosCanal</p>
</div>
<div class="annotate">
<blockquote>
<p>Respuesta: --&gt; (1) &lt;--</p>
</blockquote>
</div>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">response:</span><pre><span></span><code><a id="__codelineno-9-1" name="__codelineno-9-1" href="#__codelineno-9-1"></a><span class="p">{</span>
<a id="__codelineno-9-2" name="__codelineno-9-2" href="#__codelineno-9-2"></a><span class="w">    </span><span class="nt">&quot;piezas&quot;</span><span class="p">:[</span>
<a id="__codelineno-9-3" name="__codelineno-9-3" href="#__codelineno-9-3"></a><span class="w">        </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-9-4" name="__codelineno-9-4" href="#__codelineno-9-4"></a><span class="w">        </span><span class="nt">&quot;refLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">200647</span><span class="p">,</span>
<a id="__codelineno-9-5" name="__codelineno-9-5" href="#__codelineno-9-5"></a><span class="w">        </span><span class="nt">&quot;idVehiculo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1915379401</span><span class="p">,</span>
<a id="__codelineno-9-6" name="__codelineno-9-6" href="#__codelineno-9-6"></a><span class="w">    </span><span class="err">...</span>
<a id="__codelineno-9-7" name="__codelineno-9-7" href="#__codelineno-9-7"></a><span class="w">    </span><span class="p">],</span>
<a id="__codelineno-9-8" name="__codelineno-9-8" href="#__codelineno-9-8"></a><span class="w">    </span><span class="nt">&quot;vehiculos&quot;</span><span class="p">:[</span>
<a id="__codelineno-9-9" name="__codelineno-9-9" href="#__codelineno-9-9"></a><span class="w">        </span><span class="nt">&quot;idLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">49595</span><span class="p">,</span>
<a id="__codelineno-9-10" name="__codelineno-9-10" href="#__codelineno-9-10"></a><span class="w">        </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-9-11" name="__codelineno-9-11" href="#__codelineno-9-11"></a><span class="w">        </span><span class="nt">&quot;fechaMod&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2024-01-30T15:42:34&quot;</span><span class="p">,</span>
<a id="__codelineno-9-12" name="__codelineno-9-12" href="#__codelineno-9-12"></a><span class="w">    </span><span class="err">...</span>
<a id="__codelineno-9-13" name="__codelineno-9-13" href="#__codelineno-9-13"></a><span class="w">    </span><span class="p">],</span>
<a id="__codelineno-9-14" name="__codelineno-9-14" href="#__codelineno-9-14"></a><span class="w">    </span><span class="nt">&quot;result_set&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-9-15" name="__codelineno-9-15" href="#__codelineno-9-15"></a><span class="w">            </span><span class="nt">&quot;total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">10695</span><span class="p">,</span>
<a id="__codelineno-9-16" name="__codelineno-9-16" href="#__codelineno-9-16"></a><span class="w">            </span><span class="nt">&quot;count&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">500</span><span class="p">,</span>
<a id="__codelineno-9-17" name="__codelineno-9-17" href="#__codelineno-9-17"></a><span class="w">            </span><span class="nt">&quot;offset&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">500</span><span class="p">,</span>
<a id="__codelineno-9-18" name="__codelineno-9-18" href="#__codelineno-9-18"></a><span class="w">            </span><span class="nt">&quot;lastId&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1945959</span>
<a id="__codelineno-9-19" name="__codelineno-9-19" href="#__codelineno-9-19"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-9-20" name="__codelineno-9-20" href="#__codelineno-9-20"></a><span class="p">}</span>
</code></pre></div></li>
</ol>
<p><strong>Parámetros de RecuperarCambiosCanal:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>Ejemplo</th>
<th></th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>apikey</code></td>
<td>Header</td>
<td>(your apikey)</td>
<td>Required</td>
<td>string</td>
<td>Apikey Canal.</td>
</tr>
<tr>
<td><code>fecha</code></td>
<td>Header</td>
<td>(20/12/2023 21:29:56)</td>
<td>Required</td>
<td>string</td>
<td>Fecha a partir de la cual deseamos obtener piezas</td>
</tr>
<tr>
<td><code>lastid</code></td>
<td>Header</td>
<td>(0)</td>
<td>Required</td>
<td>int32</td>
<td>Utilizar el LastId devuelto en el Result_Set de la Paginación para obtener la siguiente tanda de piezas y sus vehículos</td>
</tr>
<tr>
<td><code>offset</code></td>
<td>Header</td>
<td>(0)</td>
<td>Required</td>
<td>int32</td>
<td>Cantidad de piezas que deseamos recuperar con un límite máximo de 1000</td>
</tr>
</tbody>
</table>
<div class="admonition warning">
<p class="admonition-title">Fecha superior a fechas piezas</p>
<p class="annotate">Si la fecha de parámetros es superior a las fechas del inventario obtendrás un resultado vacío parecido a este (1)</p>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">Resultado vacio:</span><pre><span></span><code><a id="__codelineno-10-1" name="__codelineno-10-1" href="#__codelineno-10-1"></a><span class="w">    </span><span class="p">{</span>
<a id="__codelineno-10-2" name="__codelineno-10-2" href="#__codelineno-10-2"></a><span class="w">        </span><span class="nt">&quot;piezas&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[],</span>
<a id="__codelineno-10-3" name="__codelineno-10-3" href="#__codelineno-10-3"></a><span class="w">        </span><span class="nt">&quot;vehiculos&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[],</span>
<a id="__codelineno-10-4" name="__codelineno-10-4" href="#__codelineno-10-4"></a><span class="w">        </span><span class="nt">&quot;result_set&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-10-5" name="__codelineno-10-5" href="#__codelineno-10-5"></a><span class="w">            </span><span class="nt">&quot;total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-10-6" name="__codelineno-10-6" href="#__codelineno-10-6"></a><span class="w">            </span><span class="nt">&quot;count&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-10-7" name="__codelineno-10-7" href="#__codelineno-10-7"></a><span class="w">            </span><span class="nt">&quot;offset&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1000</span><span class="p">,</span>
<a id="__codelineno-10-8" name="__codelineno-10-8" href="#__codelineno-10-8"></a><span class="w">            </span><span class="nt">&quot;lastId&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-10-9" name="__codelineno-10-9" href="#__codelineno-10-9"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-10-10" name="__codelineno-10-10" href="#__codelineno-10-10"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div></li>
</ol>
</div>
<h4 id="code-exe">Code exe<a class="headerlink" href="#code-exe" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="1:5"><input checked="checked" id="__tabbed_1_1" name="__tabbed_1" type="radio" /><input id="__tabbed_1_2" name="__tabbed_1" type="radio" /><input id="__tabbed_1_3" name="__tabbed_1" type="radio" /><input id="__tabbed_1_4" name="__tabbed_1" type="radio" /><input id="__tabbed_1_5" name="__tabbed_1" type="radio" /><div class="tabbed-labels"><label for="__tabbed_1_1">C#</label><label for="__tabbed_1_2">java</label><label for="__tabbed_1_3">python</label><label for="__tabbed_1_4">javascript</label><label for="__tabbed_1_5">Ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-11-1" name="__codelineno-11-1" href="#__codelineno-11-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-11-2" name="__codelineno-11-2" href="#__codelineno-11-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-11-3" name="__codelineno-11-3" href="#__codelineno-11-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/RecuperarCambiosCanal&quot;</span><span class="p">);</span>
<a id="__codelineno-11-4" name="__codelineno-11-4" href="#__codelineno-11-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-11-5" name="__codelineno-11-5" href="#__codelineno-11-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-11-6" name="__codelineno-11-6" href="#__codelineno-11-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;lastid&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">lastid</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-11-7" name="__codelineno-11-7" href="#__codelineno-11-7"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;offset&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">offset</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-11-8" name="__codelineno-11-8" href="#__codelineno-11-8"></a>
<a id="__codelineno-11-9" name="__codelineno-11-9" href="#__codelineno-11-9"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-11-10" name="__codelineno-11-10" href="#__codelineno-11-10"></a>
<a id="__codelineno-11-11" name="__codelineno-11-11" href="#__codelineno-11-11"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-12-1" name="__codelineno-12-1" href="#__codelineno-12-1"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.CloseableHttpResponse</span><span class="p">;</span>
<a id="__codelineno-12-2" name="__codelineno-12-2" href="#__codelineno-12-2"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.HttpPost</span><span class="p">;</span>
<a id="__codelineno-12-3" name="__codelineno-12-3" href="#__codelineno-12-3"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.entity.StringEntity</span><span class="p">;</span>
<a id="__codelineno-12-4" name="__codelineno-12-4" href="#__codelineno-12-4"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.CloseableHttpClient</span><span class="p">;</span>
<a id="__codelineno-12-5" name="__codelineno-12-5" href="#__codelineno-12-5"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.HttpClients</span><span class="p">;</span>
<a id="__codelineno-12-6" name="__codelineno-12-6" href="#__codelineno-12-6"></a>
<a id="__codelineno-12-7" name="__codelineno-12-7" href="#__codelineno-12-7"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">java.io.IOException</span><span class="p">;</span>
<a id="__codelineno-12-8" name="__codelineno-12-8" href="#__codelineno-12-8"></a>
<a id="__codelineno-12-9" name="__codelineno-12-9" href="#__codelineno-12-9"></a><span class="w">    </span><span class="kd">public</span><span class="w"> </span><span class="kd">class</span> <span class="nc">Main</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-12-10" name="__codelineno-12-10" href="#__codelineno-12-10"></a><span class="w">        </span><span class="kd">public</span><span class="w"> </span><span class="kd">static</span><span class="w"> </span><span class="kt">void</span><span class="w"> </span><span class="nf">main</span><span class="p">(</span><span class="n">String</span><span class="o">[]</span><span class="w"> </span><span class="n">args</span><span class="p">)</span><span class="w"> </span><span class="kd">throws</span><span class="w"> </span><span class="n">IOException</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-12-11" name="__codelineno-12-11" href="#__codelineno-12-11"></a><span class="w">            </span><span class="n">String</span><span class="w"> </span><span class="n">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-12-12" name="__codelineno-12-12" href="#__codelineno-12-12"></a><span class="w">            </span><span class="n">String</span><span class="w"> </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_date&quot;</span><span class="p">;</span>
<a id="__codelineno-12-13" name="__codelineno-12-13" href="#__codelineno-12-13"></a><span class="w">            </span><span class="n">String</span><span class="w"> </span><span class="n">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span><span class="p">;</span>
<a id="__codelineno-12-14" name="__codelineno-12-14" href="#__codelineno-12-14"></a><span class="w">            </span><span class="n">String</span><span class="w"> </span><span class="n">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span><span class="p">;</span>
<a id="__codelineno-12-15" name="__codelineno-12-15" href="#__codelineno-12-15"></a>
<a id="__codelineno-12-16" name="__codelineno-12-16" href="#__codelineno-12-16"></a><span class="w">            </span><span class="n">CloseableHttpClient</span><span class="w"> </span><span class="n">httpClient</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClients</span><span class="p">.</span><span class="na">createDefault</span><span class="p">();</span>
<a id="__codelineno-12-17" name="__codelineno-12-17" href="#__codelineno-12-17"></a><span class="w">            </span><span class="n">HttpPost</span><span class="w"> </span><span class="n">httpPost</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">HttpPost</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/RecuperarCambiosCanal&quot;</span><span class="p">);</span>
<a id="__codelineno-12-18" name="__codelineno-12-18" href="#__codelineno-12-18"></a><span class="w">            </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-12-19" name="__codelineno-12-19" href="#__codelineno-12-19"></a><span class="w">            </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">);</span>
<a id="__codelineno-12-20" name="__codelineno-12-20" href="#__codelineno-12-20"></a><span class="w">            </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;lastid&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">lastid</span><span class="p">);</span>
<a id="__codelineno-12-21" name="__codelineno-12-21" href="#__codelineno-12-21"></a><span class="w">            </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;offset&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">offset</span><span class="p">);</span>
<a id="__codelineno-12-22" name="__codelineno-12-22" href="#__codelineno-12-22"></a>
<a id="__codelineno-12-23" name="__codelineno-12-23" href="#__codelineno-12-23"></a><span class="w">            </span><span class="n">CloseableHttpResponse</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">httpClient</span><span class="p">.</span><span class="na">execute</span><span class="p">(</span><span class="n">httpPost</span><span class="p">);</span>
<a id="__codelineno-12-24" name="__codelineno-12-24" href="#__codelineno-12-24"></a>
<a id="__codelineno-12-25" name="__codelineno-12-25" href="#__codelineno-12-25"></a><span class="w">            </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">getEntity</span><span class="p">().</span><span class="na">getContent</span><span class="p">().</span><span class="na">toString</span><span class="p">());</span>
<a id="__codelineno-12-26" name="__codelineno-12-26" href="#__codelineno-12-26"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-12-27" name="__codelineno-12-27" href="#__codelineno-12-27"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-13-1" name="__codelineno-13-1" href="#__codelineno-13-1"></a>    <span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-13-2" name="__codelineno-13-2" href="#__codelineno-13-2"></a>
<a id="__codelineno-13-3" name="__codelineno-13-3" href="#__codelineno-13-3"></a>    <span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
<a id="__codelineno-13-4" name="__codelineno-13-4" href="#__codelineno-13-4"></a>        <span class="n">api_key</span> <span class="o">=</span> <span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-13-5" name="__codelineno-13-5" href="#__codelineno-13-5"></a>        <span class="n">fecha</span> <span class="o">=</span> <span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-13-6" name="__codelineno-13-6" href="#__codelineno-13-6"></a>        <span class="n">lastid</span> <span class="o">=</span> <span class="mi">0</span>
<a id="__codelineno-13-7" name="__codelineno-13-7" href="#__codelineno-13-7"></a>        <span class="n">offset</span> <span class="o">=</span> <span class="mi">0</span>
<a id="__codelineno-13-8" name="__codelineno-13-8" href="#__codelineno-13-8"></a>
<a id="__codelineno-13-9" name="__codelineno-13-9" href="#__codelineno-13-9"></a>        <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-13-10" name="__codelineno-13-10" href="#__codelineno-13-10"></a>            <span class="s1">&#39;apiKey&#39;</span><span class="p">:</span> <span class="n">api_key</span><span class="p">,</span>
<a id="__codelineno-13-11" name="__codelineno-13-11" href="#__codelineno-13-11"></a>            <span class="s1">&#39;fecha&#39;</span><span class="p">:</span> <span class="n">fecha</span><span class="p">,</span>
<a id="__codelineno-13-12" name="__codelineno-13-12" href="#__codelineno-13-12"></a>            <span class="s1">&#39;lastid&#39;</span><span class="p">:</span> <span class="n">lastid</span><span class="p">,</span>
<a id="__codelineno-13-13" name="__codelineno-13-13" href="#__codelineno-13-13"></a>            <span class="s1">&#39;offset&#39;</span><span class="p">:</span> <span class="n">offset</span>
<a id="__codelineno-13-14" name="__codelineno-13-14" href="#__codelineno-13-14"></a>        <span class="p">}</span>
<a id="__codelineno-13-15" name="__codelineno-13-15" href="#__codelineno-13-15"></a>
<a id="__codelineno-13-16" name="__codelineno-13-16" href="#__codelineno-13-16"></a>        <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/RecuperarCambiosCanal&#39;</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-13-17" name="__codelineno-13-17" href="#__codelineno-13-17"></a>
<a id="__codelineno-13-18" name="__codelineno-13-18" href="#__codelineno-13-18"></a>        <span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">)</span>
<a id="__codelineno-13-19" name="__codelineno-13-19" href="#__codelineno-13-19"></a>
<a id="__codelineno-13-20" name="__codelineno-13-20" href="#__codelineno-13-20"></a>    <span class="k">if</span> <span class="vm">__name__</span> <span class="o">==</span> <span class="s2">&quot;__main__&quot;</span><span class="p">:</span>
<a id="__codelineno-13-21" name="__codelineno-13-21" href="#__codelineno-13-21"></a>        <span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-14-1" name="__codelineno-14-1" href="#__codelineno-14-1"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-14-2" name="__codelineno-14-2" href="#__codelineno-14-2"></a>
<a id="__codelineno-14-3" name="__codelineno-14-3" href="#__codelineno-14-3"></a><span class="w">    </span><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">main</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-14-4" name="__codelineno-14-4" href="#__codelineno-14-4"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span><span class="p">;</span>
<a id="__codelineno-14-5" name="__codelineno-14-5" href="#__codelineno-14-5"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span><span class="p">;</span>
<a id="__codelineno-14-6" name="__codelineno-14-6" href="#__codelineno-14-6"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mf">0</span><span class="p">;</span>
<a id="__codelineno-14-7" name="__codelineno-14-7" href="#__codelineno-14-7"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mf">0</span><span class="p">;</span>
<a id="__codelineno-14-8" name="__codelineno-14-8" href="#__codelineno-14-8"></a>
<a id="__codelineno-14-9" name="__codelineno-14-9" href="#__codelineno-14-9"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/RecuperarCambiosCanal&#39;</span><span class="p">,</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-14-10" name="__codelineno-14-10" href="#__codelineno-14-10"></a><span class="w">            </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-14-11" name="__codelineno-14-11" href="#__codelineno-14-11"></a><span class="w">            </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-14-12" name="__codelineno-14-12" href="#__codelineno-14-12"></a><span class="w">                </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-14-13" name="__codelineno-14-13" href="#__codelineno-14-13"></a><span class="w">                </span><span class="s1">&#39;fecha&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">fecha</span><span class="p">,</span>
<a id="__codelineno-14-14" name="__codelineno-14-14" href="#__codelineno-14-14"></a><span class="w">                </span><span class="s1">&#39;lastid&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">lastid</span><span class="p">,</span>
<a id="__codelineno-14-15" name="__codelineno-14-15" href="#__codelineno-14-15"></a><span class="w">                </span><span class="s1">&#39;offset&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">offset</span>
<a id="__codelineno-14-16" name="__codelineno-14-16" href="#__codelineno-14-16"></a><span class="w">            </span><span class="p">}</span>
<a id="__codelineno-14-17" name="__codelineno-14-17" href="#__codelineno-14-17"></a><span class="w">        </span><span class="p">});</span>
<a id="__codelineno-14-18" name="__codelineno-14-18" href="#__codelineno-14-18"></a>
<a id="__codelineno-14-19" name="__codelineno-14-19" href="#__codelineno-14-19"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<a id="__codelineno-14-20" name="__codelineno-14-20" href="#__codelineno-14-20"></a><span class="w">        </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-14-21" name="__codelineno-14-21" href="#__codelineno-14-21"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-14-22" name="__codelineno-14-22" href="#__codelineno-14-22"></a>
<a id="__codelineno-14-23" name="__codelineno-14-23" href="#__codelineno-14-23"></a><span class="w">    </span><span class="nx">main</span><span class="p">();</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-15-1" name="__codelineno-15-1" href="#__codelineno-15-1"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-15-2" name="__codelineno-15-2" href="#__codelineno-15-2"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-15-3" name="__codelineno-15-3" href="#__codelineno-15-3"></a>
<a id="__codelineno-15-4" name="__codelineno-15-4" href="#__codelineno-15-4"></a><span class="w">    </span><span class="k">def</span><span class="w"> </span><span class="nf">main</span>
<a id="__codelineno-15-5" name="__codelineno-15-5" href="#__codelineno-15-5"></a><span class="w">        </span><span class="n">api_key</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-15-6" name="__codelineno-15-6" href="#__codelineno-15-6"></a><span class="w">        </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-15-7" name="__codelineno-15-7" href="#__codelineno-15-7"></a><span class="w">        </span><span class="n">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-15-8" name="__codelineno-15-8" href="#__codelineno-15-8"></a><span class="w">        </span><span class="n">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-15-9" name="__codelineno-15-9" href="#__codelineno-15-9"></a>
<a id="__codelineno-15-10" name="__codelineno-15-10" href="#__codelineno-15-10"></a><span class="w">        </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/RecuperarCambiosCanal&quot;</span><span class="p">)</span>
<a id="__codelineno-15-11" name="__codelineno-15-11" href="#__codelineno-15-11"></a>
<a id="__codelineno-15-12" name="__codelineno-15-12" href="#__codelineno-15-12"></a><span class="w">        </span><span class="n">https</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-15-13" name="__codelineno-15-13" href="#__codelineno-15-13"></a><span class="w">        </span><span class="n">https</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-15-14" name="__codelineno-15-14" href="#__codelineno-15-14"></a>
<a id="__codelineno-15-15" name="__codelineno-15-15" href="#__codelineno-15-15"></a><span class="w">        </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-15-16" name="__codelineno-15-16" href="#__codelineno-15-16"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">api_key</span>
<a id="__codelineno-15-17" name="__codelineno-15-17" href="#__codelineno-15-17"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;fecha&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">fecha</span>
<a id="__codelineno-15-18" name="__codelineno-15-18" href="#__codelineno-15-18"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;lastid&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">lastid</span>
<a id="__codelineno-15-19" name="__codelineno-15-19" href="#__codelineno-15-19"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;offset&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">offset</span>
<a id="__codelineno-15-20" name="__codelineno-15-20" href="#__codelineno-15-20"></a>
<a id="__codelineno-15-21" name="__codelineno-15-21" href="#__codelineno-15-21"></a><span class="w">        </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">https</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-15-22" name="__codelineno-15-22" href="#__codelineno-15-22"></a><span class="w">        </span><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">read_body</span>
<a id="__codelineno-15-23" name="__codelineno-15-23" href="#__codelineno-15-23"></a><span class="w">    </span><span class="k">end</span>
<a id="__codelineno-15-24" name="__codelineno-15-24" href="#__codelineno-15-24"></a>
<a id="__codelineno-15-25" name="__codelineno-15-25" href="#__codelineno-15-25"></a><span class="w">    </span><span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
</div>
</div>
<h4 id="pieza">Pieza<a class="headerlink" href="#pieza" title="Permanent link">&para;</a></h4>
<div class="highlight"><span class="filename">pieza</span><pre><span></span><code><a id="__codelineno-16-1" name="__codelineno-16-1" href="#__codelineno-16-1"></a><span class="w">    </span><span class="p">{</span>
<a id="__codelineno-16-2" name="__codelineno-16-2" href="#__codelineno-16-2"></a><span class="w">        </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-16-3" name="__codelineno-16-3" href="#__codelineno-16-3"></a><span class="w">        </span><span class="nt">&quot;refLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">200647</span><span class="p">,</span>
<a id="__codelineno-16-4" name="__codelineno-16-4" href="#__codelineno-16-4"></a><span class="w">        </span><span class="nt">&quot;idVehiculo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">-1915379401</span><span class="p">,</span>
<a id="__codelineno-16-5" name="__codelineno-16-5" href="#__codelineno-16-5"></a><span class="w">        </span><span class="nt">&quot;codFamilia&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;009&quot;</span><span class="p">,</span>
<a id="__codelineno-16-6" name="__codelineno-16-6" href="#__codelineno-16-6"></a><span class="w">        </span><span class="nt">&quot;descripcionFamilia&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;ELECTRICIDAD&quot;</span><span class="p">,</span>
<a id="__codelineno-16-7" name="__codelineno-16-7" href="#__codelineno-16-7"></a><span class="w">        </span><span class="nt">&quot;codArticulo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;0090060&quot;</span><span class="p">,</span>
<a id="__codelineno-16-8" name="__codelineno-16-8" href="#__codelineno-16-8"></a><span class="w">        </span><span class="nt">&quot;descripcionArticulo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;MOTOR ARRANQUE&quot;</span><span class="p">,</span>
<a id="__codelineno-16-9" name="__codelineno-16-9" href="#__codelineno-16-9"></a><span class="w">        </span><span class="nt">&quot;codVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;01130011B000004&quot;</span><span class="p">,</span>
<a id="__codelineno-16-10" name="__codelineno-16-10" href="#__codelineno-16-10"></a><span class="w">        </span><span class="nt">&quot;refPrincipal&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;0001314025&quot;</span><span class="p">,</span>
<a id="__codelineno-16-11" name="__codelineno-16-11" href="#__codelineno-16-11"></a><span class="w">        </span><span class="nt">&quot;precio&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1640</span><span class="p">,</span>
<a id="__codelineno-16-12" name="__codelineno-16-12" href="#__codelineno-16-12"></a><span class="w">        </span><span class="nt">&quot;anyoStock&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-16-13" name="__codelineno-16-13" href="#__codelineno-16-13"></a><span class="w">        </span><span class="nt">&quot;peso&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">500</span><span class="p">,</span>
<a id="__codelineno-16-14" name="__codelineno-16-14" href="#__codelineno-16-14"></a><span class="w">        </span><span class="nt">&quot;ubicacion&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-16-15" name="__codelineno-16-15" href="#__codelineno-16-15"></a><span class="w">        </span><span class="nt">&quot;observaciones&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-16-16" name="__codelineno-16-16" href="#__codelineno-16-16"></a><span class="w">        </span><span class="nt">&quot;reserva&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-16-17" name="__codelineno-16-17" href="#__codelineno-16-17"></a><span class="w">        </span><span class="nt">&quot;tipoMaterial&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-16-18" name="__codelineno-16-18" href="#__codelineno-16-18"></a><span class="w">        </span><span class="nt">&quot;urlsImgs&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-16-19" name="__codelineno-16-19" href="#__codelineno-16-19"></a><span class="w">            </span><span class="s2">&quot;https://cdn11.metasync.com/vbcXn_pop8ELJ1ANDMOCfwZjfqpc0gH-vLS5yJoXaIx_n4pL1GdB0w==&quot;</span><span class="p">,</span>
<a id="__codelineno-16-20" name="__codelineno-16-20" href="#__codelineno-16-20"></a><span class="w">            </span><span class="s2">&quot;https://cdn11.metasync.com/lAC69ruOWNYGkT68b9b8zmO5AzY1I6nZI6VMs6n94ng2FzwBkgtXBQ==&quot;</span><span class="p">,</span>
<a id="__codelineno-16-21" name="__codelineno-16-21" href="#__codelineno-16-21"></a><span class="w">            </span><span class="s2">&quot;https://cdn11.metasync.com/9wZS0vJrHkXj5b10MpSJnIAX6068ZPmRy1u0D_22quJS-5HKmnBuLA==&quot;</span><span class="p">,</span>
<a id="__codelineno-16-22" name="__codelineno-16-22" href="#__codelineno-16-22"></a><span class="w">            </span><span class="s2">&quot;https://cdn11.metasync.com/Z2-lEakumfc0WABvJhrVWjYTSt5zMIHFGhrTYHdRJlc3zq3T0RbkgQ==&quot;</span><span class="p">,</span>
<a id="__codelineno-16-23" name="__codelineno-16-23" href="#__codelineno-16-23"></a><span class="w">            </span><span class="s2">&quot;https://cdn11.metasync.com/JALdfFfGpve-YLG316-cbZj--kP28boBchWMdZ5fqIUuoY2L7ysI9A==&quot;</span>
<a id="__codelineno-16-24" name="__codelineno-16-24" href="#__codelineno-16-24"></a><span class="w">        </span><span class="p">],</span>
<a id="__codelineno-16-25" name="__codelineno-16-25" href="#__codelineno-16-25"></a><span class="w">        </span><span class="nt">&quot;fechaMod&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2024-01-30T15:42:33&quot;</span>
<a id="__codelineno-16-26" name="__codelineno-16-26" href="#__codelineno-16-26"></a><span class="w">    </span><span class="p">},</span>
</code></pre></div>
<h5 id="explicacion-pieza">Explicación pieza<a class="headerlink" href="#explicacion-pieza" title="Permanent link">&para;</a></h5>
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
<td><code>idEmpresa</code></td>
<td>int32</td>
<td>Identificador de la empresa.</td>
</tr>
<tr>
<td><code>refLocal</code></td>
<td>string</td>
<td>Identificador local de la pieza.</td>
</tr>
<tr>
<td><code>idVehiculo</code></td>
<td>string</td>
<td>Identificador local del vehículo.</td>
</tr>
<tr>
<td><code>codFamilia</code></td>
<td>string</td>
<td>Código de la familia de la pieza (ejemplo: "009").</td>
</tr>
<tr>
<td><code>descripcionFamilia</code></td>
<td>string</td>
<td>Descripción de la familia de la pieza (ejemplo: "ELECTRICIDAD").</td>
</tr>
<tr>
<td><code>codArticulo</code></td>
<td>string</td>
<td>Código único de la pieza (ejemplo: "0090060").</td>
</tr>
<tr>
<td><code>descripcionArticulo</code></td>
<td>string</td>
<td>Descripción del artículo o nombre de la pieza (ejemplo: "MOTOR ARRANQUE").</td>
</tr>
<tr>
<td><code>codVersion</code></td>
<td>string</td>
<td>Código de versión de la pieza (ejemplo: "01130011B000004").</td>
</tr>
<tr>
<td><code>refPrincipal</code></td>
<td>string</td>
<td>Referencia principal de la pieza (ejemplo: "0001314025").</td>
</tr>
<tr>
<td><code>precio</code></td>
<td>number</td>
<td>Precio de la pieza (ejemplo: 1640).</td>
</tr>
<tr>
<td><code>anyoStock</code></td>
<td>int32</td>
<td>Año de stock de la pieza (ejemplo: 0 si no se tiene información).</td>
</tr>
<tr>
<td><code>peso</code></td>
<td>int32</td>
<td>Peso de la pieza en gramos (ejemplo: 500).</td>
</tr>
<tr>
<td><code>ubicacion</code></td>
<td>int32</td>
<td>Ubicación de la pieza.</td>
</tr>
<tr>
<td><code>observaciones</code></td>
<td>string</td>
<td>Observaciones adicionales sobre la pieza.</td>
</tr>
<tr>
<td><code>reserva</code></td>
<td>int32</td>
<td>Indicador de si la pieza está reservada (ejemplo: 0 para no reservada).</td>
</tr>
<tr>
<td><code>tipoMaterial</code></td>
<td>int32</td>
<td>Tipo de material de la pieza (ejemplo: 0).</td>
</tr>
<tr>
<td><code>urlsImgs</code></td>
<td>array</td>
<td>Lista de URLs de imágenes representativas de la pieza.</td>
</tr>
<tr>
<td><code>fechaMod</code></td>
<td>string</td>
<td>Fecha y hora de la última modificación de la información de la pieza (ejemplo: "2024-01-30T15:42:33").</td>
</tr>
</tbody>
</table>
<h4 id="vehiculo">Vehículo<a class="headerlink" href="#vehiculo" title="Permanent link">&para;</a></h4>
<div class="highlight"><span class="filename">vehiculo</span><pre><span></span><code><a id="__codelineno-17-1" name="__codelineno-17-1" href="#__codelineno-17-1"></a><span class="w">    </span><span class="p">{</span>
<a id="__codelineno-17-2" name="__codelineno-17-2" href="#__codelineno-17-2"></a><span class="w">      </span><span class="nt">&quot;idLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">49595</span><span class="p">,</span>
<a id="__codelineno-17-3" name="__codelineno-17-3" href="#__codelineno-17-3"></a><span class="w">      </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-17-4" name="__codelineno-17-4" href="#__codelineno-17-4"></a><span class="w">      </span><span class="nt">&quot;fechaMod&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2024-01-30T15:42:34&quot;</span><span class="p">,</span>
<a id="__codelineno-17-5" name="__codelineno-17-5" href="#__codelineno-17-5"></a><span class="w">      </span><span class="nt">&quot;codigo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;10424&quot;</span><span class="p">,</span>
<a id="__codelineno-17-6" name="__codelineno-17-6" href="#__codelineno-17-6"></a><span class="w">      </span><span class="nt">&quot;estado&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-17-7" name="__codelineno-17-7" href="#__codelineno-17-7"></a><span class="w">          </span><span class="mi">15</span><span class="p">,</span>
<a id="__codelineno-17-8" name="__codelineno-17-8" href="#__codelineno-17-8"></a><span class="w">          </span><span class="mi">5</span>
<a id="__codelineno-17-9" name="__codelineno-17-9" href="#__codelineno-17-9"></a><span class="w">      </span><span class="p">],</span>
<a id="__codelineno-17-10" name="__codelineno-17-10" href="#__codelineno-17-10"></a><span class="w">      </span><span class="nt">&quot;bastidor&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;WBAAL71070CF45890&quot;</span><span class="p">,</span>
<a id="__codelineno-17-11" name="__codelineno-17-11" href="#__codelineno-17-11"></a><span class="w">      </span><span class="nt">&quot;matricula&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2658-FFD&quot;</span><span class="p">,</span>
<a id="__codelineno-17-12" name="__codelineno-17-12" href="#__codelineno-17-12"></a><span class="w">      </span><span class="nt">&quot;color&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;NEGRO&quot;</span><span class="p">,</span>
<a id="__codelineno-17-13" name="__codelineno-17-13" href="#__codelineno-17-13"></a><span class="w">      </span><span class="nt">&quot;kilometraje&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-17-14" name="__codelineno-17-14" href="#__codelineno-17-14"></a><span class="w">      </span><span class="nt">&quot;anyoVehiculo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2006</span><span class="p">,</span>
<a id="__codelineno-17-15" name="__codelineno-17-15" href="#__codelineno-17-15"></a><span class="w">      </span><span class="nt">&quot;codigoMotor&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;M47D20&quot;</span><span class="p">,</span>
<a id="__codelineno-17-16" name="__codelineno-17-16" href="#__codelineno-17-16"></a><span class="w">      </span><span class="nt">&quot;codigoCambio&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-17-17" name="__codelineno-17-17" href="#__codelineno-17-17"></a><span class="w">      </span><span class="nt">&quot;observaciones&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-17-18" name="__codelineno-17-18" href="#__codelineno-17-18"></a><span class="w">      </span><span class="nt">&quot;urlsImgs&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-17-19" name="__codelineno-17-19" href="#__codelineno-17-19"></a><span class="w">                </span><span class="s2">&quot;https://cdn11.metasync.com/9QcoK6IHNWwkXAisjXlSocco3IZ94WwjUyYihhJLRMNwnPYqi0JEzw==&quot;</span>
<a id="__codelineno-17-20" name="__codelineno-17-20" href="#__codelineno-17-20"></a><span class="w">            </span><span class="p">],</span>
<a id="__codelineno-17-21" name="__codelineno-17-21" href="#__codelineno-17-21"></a><span class="w">      </span><span class="nt">&quot;codMarca&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;01130&quot;</span><span class="p">,</span>
<a id="__codelineno-17-22" name="__codelineno-17-22" href="#__codelineno-17-22"></a><span class="w">      </span><span class="nt">&quot;nombreMarca&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;BMW&quot;</span><span class="p">,</span>
<a id="__codelineno-17-23" name="__codelineno-17-23" href="#__codelineno-17-23"></a><span class="w">      </span><span class="nt">&quot;codModelo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;01130046&quot;</span><span class="p">,</span>
<a id="__codelineno-17-24" name="__codelineno-17-24" href="#__codelineno-17-24"></a><span class="w">      </span><span class="nt">&quot;nombreModelo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;SERIE 3 BERLINA (E46)&quot;</span><span class="p">,</span>
<a id="__codelineno-17-25" name="__codelineno-17-25" href="#__codelineno-17-25"></a><span class="w">      </span><span class="nt">&quot;codVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;011300460080001&quot;</span><span class="p">,</span>
<a id="__codelineno-17-26" name="__codelineno-17-26" href="#__codelineno-17-26"></a><span class="w">      </span><span class="nt">&quot;nombreVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;320d&quot;</span><span class="p">,</span>
<a id="__codelineno-17-27" name="__codelineno-17-27" href="#__codelineno-17-27"></a><span class="w">      </span><span class="nt">&quot;tipoVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;BerS&quot;</span><span class="p">,</span>
<a id="__codelineno-17-28" name="__codelineno-17-28" href="#__codelineno-17-28"></a><span class="w">      </span><span class="nt">&quot;combustible&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Diesel&quot;</span><span class="p">,</span>
<a id="__codelineno-17-29" name="__codelineno-17-29" href="#__codelineno-17-29"></a><span class="w">      </span><span class="nt">&quot;puertas&quot;</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span>
<a id="__codelineno-17-30" name="__codelineno-17-30" href="#__codelineno-17-30"></a><span class="w">      </span><span class="nt">&quot;anyoInicio&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1998</span><span class="p">,</span>
<a id="__codelineno-17-31" name="__codelineno-17-31" href="#__codelineno-17-31"></a><span class="w">      </span><span class="nt">&quot;anyoFin&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2001</span><span class="p">,</span>
<a id="__codelineno-17-32" name="__codelineno-17-32" href="#__codelineno-17-32"></a><span class="w">      </span><span class="nt">&quot;tiposMotor&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-17-33" name="__codelineno-17-33" href="#__codelineno-17-33"></a><span class="w">          </span><span class="s2">&quot;M47D20&quot;</span><span class="p">,</span>
<a id="__codelineno-17-34" name="__codelineno-17-34" href="#__codelineno-17-34"></a><span class="w">          </span><span class="s2">&quot;M47204D1&quot;</span>
<a id="__codelineno-17-35" name="__codelineno-17-35" href="#__codelineno-17-35"></a><span class="w">      </span><span class="p">],</span>
<a id="__codelineno-17-36" name="__codelineno-17-36" href="#__codelineno-17-36"></a><span class="w">      </span><span class="nt">&quot;potenciaHP&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">136</span><span class="p">,</span>
<a id="__codelineno-17-37" name="__codelineno-17-37" href="#__codelineno-17-37"></a><span class="w">      </span><span class="nt">&quot;potenciaKw&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">100</span><span class="p">,</span>
<a id="__codelineno-17-38" name="__codelineno-17-38" href="#__codelineno-17-38"></a><span class="w">      </span><span class="nt">&quot;cilindrada&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1951</span><span class="p">,</span>
<a id="__codelineno-17-39" name="__codelineno-17-39" href="#__codelineno-17-39"></a><span class="w">      </span><span class="nt">&quot;transmision&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Caja de cambios 5 velocidades&quot;</span><span class="p">,</span>
<a id="__codelineno-17-40" name="__codelineno-17-40" href="#__codelineno-17-40"></a><span class="w">      </span><span class="nt">&quot;alimentacion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-17-41" name="__codelineno-17-41" href="#__codelineno-17-41"></a><span class="w">      </span><span class="nt">&quot;numMarchas&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">5</span><span class="p">,</span>
<a id="__codelineno-17-42" name="__codelineno-17-42" href="#__codelineno-17-42"></a><span class="w">      </span><span class="nt">&quot;rvCode&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;34242&quot;</span><span class="p">,</span>
<a id="__codelineno-17-43" name="__codelineno-17-43" href="#__codelineno-17-43"></a><span class="w">      </span><span class="nt">&quot;ktype&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;15638&quot;</span>
<a id="__codelineno-17-44" name="__codelineno-17-44" href="#__codelineno-17-44"></a><span class="w">  </span><span class="p">},</span>
</code></pre></div>
<h5 id="explicacion-vehiculo">Explicación vehículo<a class="headerlink" href="#explicacion-vehiculo" title="Permanent link">&para;</a></h5>
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
<td><code>idLocal</code></td>
<td>int32</td>
<td>Identificador local del vehículo.</td>
</tr>
<tr>
<td><code>idEmpresa</code></td>
<td>int32</td>
<td>Identificador de la empresa propietaria del vehículo.</td>
</tr>
<tr>
<td><code>fechaMod</code></td>
<td>string</td>
<td>Fecha y hora de la última modificación de la información del vehículo (ejemplo: "2024-01-30T15:42:34").</td>
</tr>
<tr>
<td><code>codigo</code></td>
<td>string</td>
<td>Código único del vehículo.</td>
</tr>
<tr>
<td><code>estado</code></td>
<td>array(int32)</td>
<td>Lista de estados del vehículo.(EnTramite, Revisado, Despiezado, Calculado, EnCampa, Destruido, Procesando, Baja, EnVenta, Sideo, ErrorCalculo, Valorado, Descontaminado, Tasado, ErrorAugias, Otros)</td>
</tr>
<tr>
<td><code>bastidor</code></td>
<td>string</td>
<td>Número de bastidor del vehículo.</td>
</tr>
<tr>
<td><code>matricula</code></td>
<td>string</td>
<td>Número de matrícula del vehículo.</td>
</tr>
<tr>
<td><code>color</code></td>
<td>string</td>
<td>Color del vehículo.</td>
</tr>
<tr>
<td><code>kilometraje</code></td>
<td>int32</td>
<td>Kilometraje actual del vehículo.</td>
</tr>
<tr>
<td><code>anyoVehiculo</code></td>
<td>int32</td>
<td>Año de fabricación del vehículo.</td>
</tr>
<tr>
<td><code>codigoMotor</code></td>
<td>string</td>
<td>Código del motor del vehículo.</td>
</tr>
<tr>
<td><code>codigoCambio</code></td>
<td>string</td>
<td>Código de cambio del vehículo.</td>
</tr>
<tr>
<td><code>observaciones</code></td>
<td>string</td>
<td>Observaciones adicionales sobre el vehículo.</td>
</tr>
<tr>
<td><code>urlsImgs</code></td>
<td>array(strings)</td>
<td>Lista de URLs de imágenes representativas del vehículo.</td>
</tr>
<tr>
<td><code>codMarca</code></td>
<td>string</td>
<td>Código de marca del vehículo.</td>
</tr>
<tr>
<td><code>nombreMarca</code></td>
<td>string</td>
<td>Nombre de la marca del vehículo.</td>
</tr>
<tr>
<td><code>codModelo</code></td>
<td>string</td>
<td>Código del modelo del vehículo.</td>
</tr>
<tr>
<td><code>nombreModelo</code></td>
<td>string</td>
<td>Nombre del modelo del vehículo.</td>
</tr>
<tr>
<td><code>codVersion</code></td>
<td>string</td>
<td>Código de versión del vehículo.</td>
</tr>
<tr>
<td><code>nombreVersion</code></td>
<td>string</td>
<td>Nombre de la versión del vehículo.</td>
</tr>
<tr>
<td><code>tipoVersion</code></td>
<td>string</td>
<td>Tipo de versión del vehículo.</td>
</tr>
<tr>
<td><code>combustible</code></td>
<td>string</td>
<td>Tipo de combustible del vehículo.</td>
</tr>
<tr>
<td><code>puertas</code></td>
<td>int32</td>
<td>Número de puertas del vehículo.</td>
</tr>
<tr>
<td><code>anyoInicio</code></td>
<td>int32</td>
<td>Año de inicio de producción del vehículo.</td>
</tr>
<tr>
<td><code>anyoFin</code></td>
<td>int32</td>
<td>Año de fin de producción del vehículo.</td>
</tr>
<tr>
<td><code>tiposMotor</code></td>
<td>array(string)</td>
<td>Lista de tipos de motor del vehículo.</td>
</tr>
<tr>
<td><code>potenciaHP</code></td>
<td>int32</td>
<td>Potencia del motor en caballos de fuerza.</td>
</tr>
<tr>
<td><code>potenciaKw</code></td>
<td>int32</td>
<td>Potencia del motor en kilovatios.</td>
</tr>
<tr>
<td><code>cilindrada</code></td>
<td>int32</td>
<td>Cilindrada del motor.</td>
</tr>
<tr>
<td><code>transmision</code></td>
<td>string</td>
<td>Tipo de transmisión del vehículo.</td>
</tr>
<tr>
<td><code>alimentacion</code></td>
<td>string</td>
<td>Tipo de alimentación del vehículo.</td>
</tr>
<tr>
<td><code>numMarchas</code></td>
<td>int32</td>
<td>Número de marchas de la transmisión del vehículo.</td>
</tr>
<tr>
<td><code>rvCode</code></td>
<td>string</td>
<td>Código de versión del catálogo de Recambio Verde</td>
</tr>
<tr>
<td><code>ktype</code></td>
<td>string</td>
<td>Identificador unico que hace referencia a la version de ese vehiculo</td>
</tr>
</tbody>
</table>
<h4 id="result_set">Result_set<a class="headerlink" href="#result_set" title="Permanent link">&para;</a></h4>
<div class="highlight"><span class="filename">result_set</span><pre><span></span><code><a id="__codelineno-18-1" name="__codelineno-18-1" href="#__codelineno-18-1"></a><span class="w">    </span><span class="nt">&quot;result_set&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-18-2" name="__codelineno-18-2" href="#__codelineno-18-2"></a><span class="w">        </span><span class="nt">&quot;total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">10696</span><span class="p">,</span>
<a id="__codelineno-18-3" name="__codelineno-18-3" href="#__codelineno-18-3"></a><span class="w">        </span><span class="nt">&quot;count&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1000</span><span class="p">,</span>
<a id="__codelineno-18-4" name="__codelineno-18-4" href="#__codelineno-18-4"></a><span class="w">        </span><span class="nt">&quot;offset&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1000</span><span class="p">,</span>
<a id="__codelineno-18-5" name="__codelineno-18-5" href="#__codelineno-18-5"></a><span class="w">        </span><span class="nt">&quot;lastId&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1946873</span>
<a id="__codelineno-18-6" name="__codelineno-18-6" href="#__codelineno-18-6"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div>
<p><strong>Datos result_set</strong>:</p>
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
<td><code>lastid</code></td>
<td>int32</td>
<td>Última id de pieza que recibimos para pasar a la siguiente iteración</td>
</tr>
<tr>
<td><code>offset</code></td>
<td>int32</td>
<td>Cantidad de datos que deseamos recuperar max 1000</td>
</tr>
<tr>
<td><code>total</code></td>
<td>int32</td>
<td>Cantidad total de piezas</td>
</tr>
<tr>
<td><code>count</code></td>
<td>int32</td>
<td>Cantidad de datos encontrados en esa iteración max 1000</td>
</tr>
</tbody>
</table>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Si el count fuese 0 y estuviesemos recorriendo la paginación habremos llegado al final del inventario.</p>
<p>Si el count fuese &lt; que offset también indicaria que estamos en la última tanda de la paginación.</p>
</div>
<h3 id="recuperarcambioscanalempresa"><strong>RecuperarCambiosCanalEmpresa</strong><a class="headerlink" href="#recuperarcambioscanalempresa" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>RecuperarCambiosCanalEmpresa</mark>} permite recuperar información general sobre el inventario de las empresas. Proporciona una visión general de las piezas existentes, vehículos y el propio resultado de esa consulta.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Almacen/RecuperarCambiosCanalEmpresa</p>
</div>
<div class="annotate">
<blockquote>
<p>Respuesta: --&gt; (1) &lt;--</p>
</blockquote>
</div>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">response:</span><pre><span></span><code><a id="__codelineno-19-1" name="__codelineno-19-1" href="#__codelineno-19-1"></a><span class="p">{</span>
<a id="__codelineno-19-2" name="__codelineno-19-2" href="#__codelineno-19-2"></a><span class="w">    </span><span class="nt">&quot;piezas&quot;</span><span class="p">:[</span>
<a id="__codelineno-19-3" name="__codelineno-19-3" href="#__codelineno-19-3"></a><span class="w">        </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-19-4" name="__codelineno-19-4" href="#__codelineno-19-4"></a><span class="w">        </span><span class="nt">&quot;refLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">200647</span><span class="p">,</span>
<a id="__codelineno-19-5" name="__codelineno-19-5" href="#__codelineno-19-5"></a><span class="w">        </span><span class="nt">&quot;idVehiculo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1915379401</span><span class="p">,</span>
<a id="__codelineno-19-6" name="__codelineno-19-6" href="#__codelineno-19-6"></a><span class="w">    </span><span class="err">...</span>
<a id="__codelineno-19-7" name="__codelineno-19-7" href="#__codelineno-19-7"></a><span class="w">    </span><span class="p">],</span>
<a id="__codelineno-19-8" name="__codelineno-19-8" href="#__codelineno-19-8"></a><span class="w">    </span><span class="nt">&quot;vehiculos&quot;</span><span class="p">:[</span>
<a id="__codelineno-19-9" name="__codelineno-19-9" href="#__codelineno-19-9"></a><span class="w">        </span><span class="nt">&quot;idLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">49595</span><span class="p">,</span>
<a id="__codelineno-19-10" name="__codelineno-19-10" href="#__codelineno-19-10"></a><span class="w">        </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-19-11" name="__codelineno-19-11" href="#__codelineno-19-11"></a><span class="w">        </span><span class="nt">&quot;fechaMod&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2024-01-30T15:42:34&quot;</span><span class="p">,</span>
<a id="__codelineno-19-12" name="__codelineno-19-12" href="#__codelineno-19-12"></a><span class="w">    </span><span class="err">...</span>
<a id="__codelineno-19-13" name="__codelineno-19-13" href="#__codelineno-19-13"></a><span class="w">    </span><span class="p">],</span>
<a id="__codelineno-19-14" name="__codelineno-19-14" href="#__codelineno-19-14"></a><span class="w">    </span><span class="nt">&quot;result_set&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-19-15" name="__codelineno-19-15" href="#__codelineno-19-15"></a><span class="w">            </span><span class="nt">&quot;total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">10695</span><span class="p">,</span>
<a id="__codelineno-19-16" name="__codelineno-19-16" href="#__codelineno-19-16"></a><span class="w">            </span><span class="nt">&quot;count&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">500</span><span class="p">,</span>
<a id="__codelineno-19-17" name="__codelineno-19-17" href="#__codelineno-19-17"></a><span class="w">            </span><span class="nt">&quot;offset&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">500</span><span class="p">,</span>
<a id="__codelineno-19-18" name="__codelineno-19-18" href="#__codelineno-19-18"></a><span class="w">            </span><span class="nt">&quot;lastId&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1945959</span>
<a id="__codelineno-19-19" name="__codelineno-19-19" href="#__codelineno-19-19"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-19-20" name="__codelineno-19-20" href="#__codelineno-19-20"></a><span class="p">}</span>
</code></pre></div></li>
</ol>
<p><strong>Parámetros de RecuperarCambiosCanalEmpresa:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>Ejemplo</th>
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
<td><code>fecha</code></td>
<td>Header</td>
<td>(20/12/2023 21:29:56)</td>
<td>Required</td>
<td>string</td>
<td>Fecha a partir de la cual deseamos obtener piezas</td>
</tr>
<tr>
<td><code>lastid</code></td>
<td>Header</td>
<td>(0)</td>
<td>Required</td>
<td>int32</td>
<td>Utilizar el LastId devuelto en el Result_Set de la Paginación para obtener la siguiente tanda de piezas y sus vehiculos</td>
</tr>
<tr>
<td><code>offset</code></td>
<td>Header</td>
<td>(0)</td>
<td>Required</td>
<td>int32</td>
<td>Cantidad de piezas que deseamos recuperar con un límite máximo de 1000</td>
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
<div class="admonition warning">
<p class="admonition-title">Fecha superior a fechas piezas</p>
<p class="annotate">Si la fecha de parámetros es superior a las fechas del inventario obtendrás un resultado vacío parecido a este (1)</p>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">Resultado vacio:</span><pre><span></span><code><a id="__codelineno-20-1" name="__codelineno-20-1" href="#__codelineno-20-1"></a><span class="w">    </span><span class="p">{</span>
<a id="__codelineno-20-2" name="__codelineno-20-2" href="#__codelineno-20-2"></a><span class="w">        </span><span class="nt">&quot;piezas&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[],</span>
<a id="__codelineno-20-3" name="__codelineno-20-3" href="#__codelineno-20-3"></a><span class="w">        </span><span class="nt">&quot;vehiculos&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[],</span>
<a id="__codelineno-20-4" name="__codelineno-20-4" href="#__codelineno-20-4"></a><span class="w">        </span><span class="nt">&quot;result_set&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-20-5" name="__codelineno-20-5" href="#__codelineno-20-5"></a><span class="w">            </span><span class="nt">&quot;total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-20-6" name="__codelineno-20-6" href="#__codelineno-20-6"></a><span class="w">            </span><span class="nt">&quot;count&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-20-7" name="__codelineno-20-7" href="#__codelineno-20-7"></a><span class="w">            </span><span class="nt">&quot;offset&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1000</span><span class="p">,</span>
<a id="__codelineno-20-8" name="__codelineno-20-8" href="#__codelineno-20-8"></a><span class="w">            </span><span class="nt">&quot;lastId&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-20-9" name="__codelineno-20-9" href="#__codelineno-20-9"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-20-10" name="__codelineno-20-10" href="#__codelineno-20-10"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div></li>
</ol>
</div>
<h4 id="code-exe_1">Code exe<a class="headerlink" href="#code-exe_1" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="2:5"><input checked="checked" id="__tabbed_2_1" name="__tabbed_2" type="radio" /><input id="__tabbed_2_2" name="__tabbed_2" type="radio" /><input id="__tabbed_2_3" name="__tabbed_2" type="radio" /><input id="__tabbed_2_4" name="__tabbed_2" type="radio" /><input id="__tabbed_2_5" name="__tabbed_2" type="radio" /><div class="tabbed-labels"><label for="__tabbed_2_1">C#</label><label for="__tabbed_2_2">java</label><label for="__tabbed_2_3">python</label><label for="__tabbed_2_4">javascript</label><label for="__tabbed_2_5">Ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-21-1" name="__codelineno-21-1" href="#__codelineno-21-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-21-2" name="__codelineno-21-2" href="#__codelineno-21-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-21-3" name="__codelineno-21-3" href="#__codelineno-21-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/RecuperarCambiosCanalEmpresa&quot;</span><span class="p">);</span>
<a id="__codelineno-21-4" name="__codelineno-21-4" href="#__codelineno-21-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-21-5" name="__codelineno-21-5" href="#__codelineno-21-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-21-6" name="__codelineno-21-6" href="#__codelineno-21-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;lastid&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">lastid</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-21-7" name="__codelineno-21-7" href="#__codelineno-21-7"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;offset&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">offset</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-21-8" name="__codelineno-21-8" href="#__codelineno-21-8"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-21-9" name="__codelineno-21-9" href="#__codelineno-21-9"></a>
<a id="__codelineno-21-10" name="__codelineno-21-10" href="#__codelineno-21-10"></a>
<a id="__codelineno-21-11" name="__codelineno-21-11" href="#__codelineno-21-11"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-21-12" name="__codelineno-21-12" href="#__codelineno-21-12"></a>
<a id="__codelineno-21-13" name="__codelineno-21-13" href="#__codelineno-21-13"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-22-1" name="__codelineno-22-1" href="#__codelineno-22-1"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.CloseableHttpResponse</span><span class="p">;</span>
<a id="__codelineno-22-2" name="__codelineno-22-2" href="#__codelineno-22-2"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.HttpPost</span><span class="p">;</span>
<a id="__codelineno-22-3" name="__codelineno-22-3" href="#__codelineno-22-3"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.entity.StringEntity</span><span class="p">;</span>
<a id="__codelineno-22-4" name="__codelineno-22-4" href="#__codelineno-22-4"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.CloseableHttpClient</span><span class="p">;</span>
<a id="__codelineno-22-5" name="__codelineno-22-5" href="#__codelineno-22-5"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.HttpClients</span><span class="p">;</span>
<a id="__codelineno-22-6" name="__codelineno-22-6" href="#__codelineno-22-6"></a>
<a id="__codelineno-22-7" name="__codelineno-22-7" href="#__codelineno-22-7"></a><span class="kn">import</span><span class="w"> </span><span class="nn">java.io.IOException</span><span class="p">;</span>
<a id="__codelineno-22-8" name="__codelineno-22-8" href="#__codelineno-22-8"></a><span class="kd">public</span><span class="w"> </span><span class="kd">class</span> <span class="nc">Main</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-22-9" name="__codelineno-22-9" href="#__codelineno-22-9"></a><span class="w">    </span><span class="kd">public</span><span class="w"> </span><span class="kd">static</span><span class="w"> </span><span class="kt">void</span><span class="w"> </span><span class="nf">main</span><span class="p">(</span><span class="n">String</span><span class="o">[]</span><span class="w"> </span><span class="n">args</span><span class="p">)</span><span class="w"> </span><span class="kd">throws</span><span class="w"> </span><span class="n">IOException</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-22-10" name="__codelineno-22-10" href="#__codelineno-22-10"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-22-11" name="__codelineno-22-11" href="#__codelineno-22-11"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_date&quot;</span><span class="p">;</span>
<a id="__codelineno-22-12" name="__codelineno-22-12" href="#__codelineno-22-12"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_last_id&quot;</span><span class="p">;</span>
<a id="__codelineno-22-13" name="__codelineno-22-13" href="#__codelineno-22-13"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_offset&quot;</span><span class="p">;</span>
<a id="__codelineno-22-14" name="__codelineno-22-14" href="#__codelineno-22-14"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_company_id&quot;</span><span class="p">;</span>
<a id="__codelineno-22-15" name="__codelineno-22-15" href="#__codelineno-22-15"></a>
<a id="__codelineno-22-16" name="__codelineno-22-16" href="#__codelineno-22-16"></a><span class="w">        </span><span class="n">CloseableHttpClient</span><span class="w"> </span><span class="n">httpClient</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClients</span><span class="p">.</span><span class="na">createDefault</span><span class="p">();</span>
<a id="__codelineno-22-17" name="__codelineno-22-17" href="#__codelineno-22-17"></a><span class="w">        </span><span class="n">HttpPost</span><span class="w"> </span><span class="n">httpPost</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">HttpPost</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/RecuperarCambiosCanalEmpresa&quot;</span><span class="p">);</span>
<a id="__codelineno-22-18" name="__codelineno-22-18" href="#__codelineno-22-18"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-22-19" name="__codelineno-22-19" href="#__codelineno-22-19"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">);</span>
<a id="__codelineno-22-20" name="__codelineno-22-20" href="#__codelineno-22-20"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;lastid&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">lastid</span><span class="p">);</span>
<a id="__codelineno-22-21" name="__codelineno-22-21" href="#__codelineno-22-21"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;offset&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">offset</span><span class="p">);</span>
<a id="__codelineno-22-22" name="__codelineno-22-22" href="#__codelineno-22-22"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">);</span>
<a id="__codelineno-22-23" name="__codelineno-22-23" href="#__codelineno-22-23"></a>
<a id="__codelineno-22-24" name="__codelineno-22-24" href="#__codelineno-22-24"></a><span class="w">        </span><span class="n">CloseableHttpResponse</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">httpClient</span><span class="p">.</span><span class="na">execute</span><span class="p">(</span><span class="n">httpPost</span><span class="p">);</span>
<a id="__codelineno-22-25" name="__codelineno-22-25" href="#__codelineno-22-25"></a>
<a id="__codelineno-22-26" name="__codelineno-22-26" href="#__codelineno-22-26"></a><span class="w">        </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">getEntity</span><span class="p">().</span><span class="na">getContent</span><span class="p">().</span><span class="na">toString</span><span class="p">());</span>
<a id="__codelineno-22-27" name="__codelineno-22-27" href="#__codelineno-22-27"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-22-28" name="__codelineno-22-28" href="#__codelineno-22-28"></a><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-23-1" name="__codelineno-23-1" href="#__codelineno-23-1"></a>    <span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-23-2" name="__codelineno-23-2" href="#__codelineno-23-2"></a>
<a id="__codelineno-23-3" name="__codelineno-23-3" href="#__codelineno-23-3"></a>    <span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
<a id="__codelineno-23-4" name="__codelineno-23-4" href="#__codelineno-23-4"></a>        <span class="n">api_key</span> <span class="o">=</span> <span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-23-5" name="__codelineno-23-5" href="#__codelineno-23-5"></a>        <span class="n">fecha</span> <span class="o">=</span> <span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-23-6" name="__codelineno-23-6" href="#__codelineno-23-6"></a>        <span class="n">lastid</span> <span class="o">=</span> <span class="s1">&#39;your_last_id&#39;</span>
<a id="__codelineno-23-7" name="__codelineno-23-7" href="#__codelineno-23-7"></a>        <span class="n">offset</span> <span class="o">=</span> <span class="s1">&#39;your_offset&#39;</span>
<a id="__codelineno-23-8" name="__codelineno-23-8" href="#__codelineno-23-8"></a>        <span class="n">idempresa</span> <span class="o">=</span> <span class="s1">&#39;your_company_id&#39;</span>
<a id="__codelineno-23-9" name="__codelineno-23-9" href="#__codelineno-23-9"></a>
<a id="__codelineno-23-10" name="__codelineno-23-10" href="#__codelineno-23-10"></a>        <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-23-11" name="__codelineno-23-11" href="#__codelineno-23-11"></a>            <span class="s1">&#39;apiKey&#39;</span><span class="p">:</span> <span class="n">api_key</span><span class="p">,</span>
<a id="__codelineno-23-12" name="__codelineno-23-12" href="#__codelineno-23-12"></a>            <span class="s1">&#39;fecha&#39;</span><span class="p">:</span> <span class="n">fecha</span><span class="p">,</span>
<a id="__codelineno-23-13" name="__codelineno-23-13" href="#__codelineno-23-13"></a>            <span class="s1">&#39;lastid&#39;</span><span class="p">:</span> <span class="n">lastid</span><span class="p">,</span>
<a id="__codelineno-23-14" name="__codelineno-23-14" href="#__codelineno-23-14"></a>            <span class="s1">&#39;offset&#39;</span><span class="p">:</span> <span class="n">offset</span><span class="p">,</span>
<a id="__codelineno-23-15" name="__codelineno-23-15" href="#__codelineno-23-15"></a>            <span class="s1">&#39;idempresa&#39;</span><span class="p">:</span> <span class="n">idempresa</span>
<a id="__codelineno-23-16" name="__codelineno-23-16" href="#__codelineno-23-16"></a>        <span class="p">}</span>
<a id="__codelineno-23-17" name="__codelineno-23-17" href="#__codelineno-23-17"></a>
<a id="__codelineno-23-18" name="__codelineno-23-18" href="#__codelineno-23-18"></a>        <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/RecuperarCambiosCanalEmpresa&#39;</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-23-19" name="__codelineno-23-19" href="#__codelineno-23-19"></a>
<a id="__codelineno-23-20" name="__codelineno-23-20" href="#__codelineno-23-20"></a>        <span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">)</span>
<a id="__codelineno-23-21" name="__codelineno-23-21" href="#__codelineno-23-21"></a>
<a id="__codelineno-23-22" name="__codelineno-23-22" href="#__codelineno-23-22"></a>    <span class="k">if</span> <span class="vm">__name__</span> <span class="o">==</span> <span class="s2">&quot;__main__&quot;</span><span class="p">:</span>
<a id="__codelineno-23-23" name="__codelineno-23-23" href="#__codelineno-23-23"></a>        <span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-24-1" name="__codelineno-24-1" href="#__codelineno-24-1"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-24-2" name="__codelineno-24-2" href="#__codelineno-24-2"></a>
<a id="__codelineno-24-3" name="__codelineno-24-3" href="#__codelineno-24-3"></a><span class="w">    </span><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">main</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-24-4" name="__codelineno-24-4" href="#__codelineno-24-4"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span><span class="p">;</span>
<a id="__codelineno-24-5" name="__codelineno-24-5" href="#__codelineno-24-5"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span><span class="p">;</span>
<a id="__codelineno-24-6" name="__codelineno-24-6" href="#__codelineno-24-6"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_last_id&#39;</span><span class="p">;</span>
<a id="__codelineno-24-7" name="__codelineno-24-7" href="#__codelineno-24-7"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_offset&#39;</span><span class="p">;</span>
<a id="__codelineno-24-8" name="__codelineno-24-8" href="#__codelineno-24-8"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_company_id&#39;</span><span class="p">;</span>
<a id="__codelineno-24-9" name="__codelineno-24-9" href="#__codelineno-24-9"></a>
<a id="__codelineno-24-10" name="__codelineno-24-10" href="#__codelineno-24-10"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/RecuperarCambiosCanalEmpresa&#39;</span><span class="p">,</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-24-11" name="__codelineno-24-11" href="#__codelineno-24-11"></a><span class="w">            </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-24-12" name="__codelineno-24-12" href="#__codelineno-24-12"></a><span class="w">            </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-24-13" name="__codelineno-24-13" href="#__codelineno-24-13"></a><span class="w">                </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-24-14" name="__codelineno-24-14" href="#__codelineno-24-14"></a><span class="w">                </span><span class="s1">&#39;fecha&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">fecha</span><span class="p">,</span>
<a id="__codelineno-24-15" name="__codelineno-24-15" href="#__codelineno-24-15"></a><span class="w">                </span><span class="s1">&#39;lastid&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">lastid</span><span class="p">,</span>
<a id="__codelineno-24-16" name="__codelineno-24-16" href="#__codelineno-24-16"></a><span class="w">                </span><span class="s1">&#39;offset&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">offset</span><span class="p">,</span>
<a id="__codelineno-24-17" name="__codelineno-24-17" href="#__codelineno-24-17"></a><span class="w">                </span><span class="s1">&#39;idempresa&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">idempresa</span>
<a id="__codelineno-24-18" name="__codelineno-24-18" href="#__codelineno-24-18"></a><span class="w">            </span><span class="p">}</span>
<a id="__codelineno-24-19" name="__codelineno-24-19" href="#__codelineno-24-19"></a><span class="w">        </span><span class="p">});</span>
<a id="__codelineno-24-20" name="__codelineno-24-20" href="#__codelineno-24-20"></a>
<a id="__codelineno-24-21" name="__codelineno-24-21" href="#__codelineno-24-21"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<a id="__codelineno-24-22" name="__codelineno-24-22" href="#__codelineno-24-22"></a><span class="w">        </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-24-23" name="__codelineno-24-23" href="#__codelineno-24-23"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-24-24" name="__codelineno-24-24" href="#__codelineno-24-24"></a>
<a id="__codelineno-24-25" name="__codelineno-24-25" href="#__codelineno-24-25"></a><span class="w">    </span><span class="nx">main</span><span class="p">();</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-25-1" name="__codelineno-25-1" href="#__codelineno-25-1"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-25-2" name="__codelineno-25-2" href="#__codelineno-25-2"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-25-3" name="__codelineno-25-3" href="#__codelineno-25-3"></a>
<a id="__codelineno-25-4" name="__codelineno-25-4" href="#__codelineno-25-4"></a><span class="w">    </span><span class="k">def</span><span class="w"> </span><span class="nf">main</span>
<a id="__codelineno-25-5" name="__codelineno-25-5" href="#__codelineno-25-5"></a><span class="w">        </span><span class="n">api_key</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-25-6" name="__codelineno-25-6" href="#__codelineno-25-6"></a><span class="w">        </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-25-7" name="__codelineno-25-7" href="#__codelineno-25-7"></a><span class="w">        </span><span class="n">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_last_id&#39;</span>
<a id="__codelineno-25-8" name="__codelineno-25-8" href="#__codelineno-25-8"></a><span class="w">        </span><span class="n">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_offset&#39;</span>
<a id="__codelineno-25-9" name="__codelineno-25-9" href="#__codelineno-25-9"></a><span class="w">        </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_company_id&#39;</span>
<a id="__codelineno-25-10" name="__codelineno-25-10" href="#__codelineno-25-10"></a>
<a id="__codelineno-25-11" name="__codelineno-25-11" href="#__codelineno-25-11"></a><span class="w">        </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/RecuperarCambiosCanalEmpresa&quot;</span><span class="p">)</span>
<a id="__codelineno-25-12" name="__codelineno-25-12" href="#__codelineno-25-12"></a>
<a id="__codelineno-25-13" name="__codelineno-25-13" href="#__codelineno-25-13"></a><span class="w">        </span><span class="n">https</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-25-14" name="__codelineno-25-14" href="#__codelineno-25-14"></a><span class="w">        </span><span class="n">https</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-25-15" name="__codelineno-25-15" href="#__codelineno-25-15"></a>
<a id="__codelineno-25-16" name="__codelineno-25-16" href="#__codelineno-25-16"></a><span class="w">        </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-25-17" name="__codelineno-25-17" href="#__codelineno-25-17"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">api_key</span>
<a id="__codelineno-25-18" name="__codelineno-25-18" href="#__codelineno-25-18"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;fecha&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">fecha</span>
<a id="__codelineno-25-19" name="__codelineno-25-19" href="#__codelineno-25-19"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;lastid&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">lastid</span>
<a id="__codelineno-25-20" name="__codelineno-25-20" href="#__codelineno-25-20"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;offset&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">offset</span>
<a id="__codelineno-25-21" name="__codelineno-25-21" href="#__codelineno-25-21"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;idempresa&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">idempresa</span>
<a id="__codelineno-25-22" name="__codelineno-25-22" href="#__codelineno-25-22"></a>
<a id="__codelineno-25-23" name="__codelineno-25-23" href="#__codelineno-25-23"></a><span class="w">        </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">https</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-25-24" name="__codelineno-25-24" href="#__codelineno-25-24"></a><span class="w">        </span><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">read_body</span>
<a id="__codelineno-25-25" name="__codelineno-25-25" href="#__codelineno-25-25"></a><span class="w">    </span><span class="k">end</span>
<a id="__codelineno-25-26" name="__codelineno-25-26" href="#__codelineno-25-26"></a>
<a id="__codelineno-25-27" name="__codelineno-25-27" href="#__codelineno-25-27"></a><span class="w">    </span><span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
</div>
</div>
<h4 id="pieza_1">Pieza<a class="headerlink" href="#pieza_1" title="Permanent link">&para;</a></h4>
<div class="highlight"><span class="filename">pieza</span><pre><span></span><code><a id="__codelineno-26-1" name="__codelineno-26-1" href="#__codelineno-26-1"></a><span class="w">    </span><span class="p">{</span>
<a id="__codelineno-26-2" name="__codelineno-26-2" href="#__codelineno-26-2"></a><span class="w">        </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-26-3" name="__codelineno-26-3" href="#__codelineno-26-3"></a><span class="w">        </span><span class="nt">&quot;refLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">200647</span><span class="p">,</span>
<a id="__codelineno-26-4" name="__codelineno-26-4" href="#__codelineno-26-4"></a><span class="w">        </span><span class="nt">&quot;idVehiculo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">-1915379401</span><span class="p">,</span>
<a id="__codelineno-26-5" name="__codelineno-26-5" href="#__codelineno-26-5"></a><span class="w">        </span><span class="nt">&quot;codFamilia&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;009&quot;</span><span class="p">,</span>
<a id="__codelineno-26-6" name="__codelineno-26-6" href="#__codelineno-26-6"></a><span class="w">        </span><span class="nt">&quot;descripcionFamilia&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;ELECTRICIDAD&quot;</span><span class="p">,</span>
<a id="__codelineno-26-7" name="__codelineno-26-7" href="#__codelineno-26-7"></a><span class="w">        </span><span class="nt">&quot;codArticulo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;0090060&quot;</span><span class="p">,</span>
<a id="__codelineno-26-8" name="__codelineno-26-8" href="#__codelineno-26-8"></a><span class="w">        </span><span class="nt">&quot;descripcionArticulo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;MOTOR ARRANQUE&quot;</span><span class="p">,</span>
<a id="__codelineno-26-9" name="__codelineno-26-9" href="#__codelineno-26-9"></a><span class="w">        </span><span class="nt">&quot;codVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;01130011B000004&quot;</span><span class="p">,</span>
<a id="__codelineno-26-10" name="__codelineno-26-10" href="#__codelineno-26-10"></a><span class="w">        </span><span class="nt">&quot;refPrincipal&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;0001314025&quot;</span><span class="p">,</span>
<a id="__codelineno-26-11" name="__codelineno-26-11" href="#__codelineno-26-11"></a><span class="w">        </span><span class="nt">&quot;precio&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1640</span><span class="p">,</span>
<a id="__codelineno-26-12" name="__codelineno-26-12" href="#__codelineno-26-12"></a><span class="w">        </span><span class="nt">&quot;anyoStock&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-26-13" name="__codelineno-26-13" href="#__codelineno-26-13"></a><span class="w">        </span><span class="nt">&quot;peso&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">500</span><span class="p">,</span>
<a id="__codelineno-26-14" name="__codelineno-26-14" href="#__codelineno-26-14"></a><span class="w">        </span><span class="nt">&quot;ubicacion&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span>
<a id="__codelineno-26-15" name="__codelineno-26-15" href="#__codelineno-26-15"></a><span class="w">        </span><span class="nt">&quot;observaciones&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-26-16" name="__codelineno-26-16" href="#__codelineno-26-16"></a><span class="w">        </span><span class="nt">&quot;reserva&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-26-17" name="__codelineno-26-17" href="#__codelineno-26-17"></a><span class="w">        </span><span class="nt">&quot;tipoMaterial&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-26-18" name="__codelineno-26-18" href="#__codelineno-26-18"></a><span class="w">        </span><span class="nt">&quot;urlsImgs&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-26-19" name="__codelineno-26-19" href="#__codelineno-26-19"></a><span class="w">            </span><span class="s2">&quot;https://cdn11.metasync.com/vbcXn_pop8ELJ1ANDMOCfwZjfqpc0gH-vLS5yJoXaIx_n4pL1GdB0w==&quot;</span><span class="p">,</span>
<a id="__codelineno-26-20" name="__codelineno-26-20" href="#__codelineno-26-20"></a><span class="w">            </span><span class="s2">&quot;https://cdn11.metasync.com/lAC69ruOWNYGkT68b9b8zmO5AzY1I6nZI6VMs6n94ng2FzwBkgtXBQ==&quot;</span><span class="p">,</span>
<a id="__codelineno-26-21" name="__codelineno-26-21" href="#__codelineno-26-21"></a><span class="w">            </span><span class="s2">&quot;https://cdn11.metasync.com/9wZS0vJrHkXj5b10MpSJnIAX6068ZPmRy1u0D_22quJS-5HKmnBuLA==&quot;</span><span class="p">,</span>
<a id="__codelineno-26-22" name="__codelineno-26-22" href="#__codelineno-26-22"></a><span class="w">            </span><span class="s2">&quot;https://cdn11.metasync.com/Z2-lEakumfc0WABvJhrVWjYTSt5zMIHFGhrTYHdRJlc3zq3T0RbkgQ==&quot;</span><span class="p">,</span>
<a id="__codelineno-26-23" name="__codelineno-26-23" href="#__codelineno-26-23"></a><span class="w">            </span><span class="s2">&quot;https://cdn11.metasync.com/JALdfFfGpve-YLG316-cbZj--kP28boBchWMdZ5fqIUuoY2L7ysI9A==&quot;</span>
<a id="__codelineno-26-24" name="__codelineno-26-24" href="#__codelineno-26-24"></a><span class="w">        </span><span class="p">],</span>
<a id="__codelineno-26-25" name="__codelineno-26-25" href="#__codelineno-26-25"></a><span class="w">        </span><span class="nt">&quot;fechaMod&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2024-01-30T15:42:33&quot;</span>
<a id="__codelineno-26-26" name="__codelineno-26-26" href="#__codelineno-26-26"></a><span class="w">    </span><span class="p">},</span>
</code></pre></div>
<h5 id="explicacion-pieza_1">Explicación pieza<a class="headerlink" href="#explicacion-pieza_1" title="Permanent link">&para;</a></h5>
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
<td><code>idEmpresa</code></td>
<td>int32</td>
<td>Identificador de la empresa.</td>
</tr>
<tr>
<td><code>refLocal</code></td>
<td>string</td>
<td>Identificador local de la pieza.</td>
</tr>
<tr>
<td><code>idVehiculo</code></td>
<td>string</td>
<td>Identificador local del vehículo.</td>
</tr>
<tr>
<td><code>codFamilia</code></td>
<td>string</td>
<td>Código de la familia de la pieza (ejemplo: "009").</td>
</tr>
<tr>
<td><code>descripcionFamilia</code></td>
<td>string</td>
<td>Descripción de la familia de la pieza (ejemplo: "ELECTRICIDAD").</td>
</tr>
<tr>
<td><code>codArticulo</code></td>
<td>string</td>
<td>Código único de la pieza (ejemplo: "0090060").</td>
</tr>
<tr>
<td><code>descripcionArticulo</code></td>
<td>string</td>
<td>Descripción del artículo o nombre de la pieza (ejemplo: "MOTOR ARRANQUE").</td>
</tr>
<tr>
<td><code>codVersion</code></td>
<td>string</td>
<td>Código de versión de la pieza (ejemplo: "01130011B000004").</td>
</tr>
<tr>
<td><code>refPrincipal</code></td>
<td>string</td>
<td>Referencia principal de la pieza (ejemplo: "0001314025").</td>
</tr>
<tr>
<td><code>precio</code></td>
<td>number</td>
<td>Precio de la pieza (ejemplo: 1640).</td>
</tr>
<tr>
<td><code>anyoStock</code></td>
<td>int32</td>
<td>Año de stock de la pieza (ejemplo: 0 si no se tiene información).</td>
</tr>
<tr>
<td><code>peso</code></td>
<td>int32</td>
<td>Peso de la pieza en gramos (ejemplo: 500).</td>
</tr>
<tr>
<td><code>ubicacion</code></td>
<td>int32</td>
<td>Ubicación de la pieza.</td>
</tr>
<tr>
<td><code>observaciones</code></td>
<td>string</td>
<td>Observaciones adicionales sobre la pieza.</td>
</tr>
<tr>
<td><code>reserva</code></td>
<td>int32</td>
<td>Indicador de si la pieza está reservada (ejemplo: 0 para no reservada).</td>
</tr>
<tr>
<td><code>tipoMaterial</code></td>
<td>int32</td>
<td>Tipo de material de la pieza (ejemplo: 0).</td>
</tr>
<tr>
<td><code>urlsImgs</code></td>
<td>array</td>
<td>Lista de URLs de imágenes representativas de la pieza.</td>
</tr>
<tr>
<td><code>fechaMod</code></td>
<td>string</td>
<td>Fecha y hora de la última modificación de la información de la pieza (ejemplo: "2024-01-30T15:42:33").</td>
</tr>
</tbody>
</table>
<h4 id="vehiculo_1">Vehiculo<a class="headerlink" href="#vehiculo_1" title="Permanent link">&para;</a></h4>
<div class="highlight"><span class="filename">vehiculo</span><pre><span></span><code><a id="__codelineno-27-1" name="__codelineno-27-1" href="#__codelineno-27-1"></a><span class="w">    </span><span class="p">{</span>
<a id="__codelineno-27-2" name="__codelineno-27-2" href="#__codelineno-27-2"></a><span class="w">      </span><span class="nt">&quot;idLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">49595</span><span class="p">,</span>
<a id="__codelineno-27-3" name="__codelineno-27-3" href="#__codelineno-27-3"></a><span class="w">      </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-27-4" name="__codelineno-27-4" href="#__codelineno-27-4"></a><span class="w">      </span><span class="nt">&quot;fechaMod&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2024-01-30T15:42:34&quot;</span><span class="p">,</span>
<a id="__codelineno-27-5" name="__codelineno-27-5" href="#__codelineno-27-5"></a><span class="w">      </span><span class="nt">&quot;codigo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;10424&quot;</span><span class="p">,</span>
<a id="__codelineno-27-6" name="__codelineno-27-6" href="#__codelineno-27-6"></a><span class="w">      </span><span class="nt">&quot;estado&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-27-7" name="__codelineno-27-7" href="#__codelineno-27-7"></a><span class="w">          </span><span class="mi">15</span><span class="p">,</span>
<a id="__codelineno-27-8" name="__codelineno-27-8" href="#__codelineno-27-8"></a><span class="w">          </span><span class="mi">5</span>
<a id="__codelineno-27-9" name="__codelineno-27-9" href="#__codelineno-27-9"></a><span class="w">      </span><span class="p">],</span>
<a id="__codelineno-27-10" name="__codelineno-27-10" href="#__codelineno-27-10"></a><span class="w">      </span><span class="nt">&quot;bastidor&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;WBAAL71070CF45890&quot;</span><span class="p">,</span>
<a id="__codelineno-27-11" name="__codelineno-27-11" href="#__codelineno-27-11"></a><span class="w">      </span><span class="nt">&quot;matricula&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2658-FFD&quot;</span><span class="p">,</span>
<a id="__codelineno-27-12" name="__codelineno-27-12" href="#__codelineno-27-12"></a><span class="w">      </span><span class="nt">&quot;color&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;NEGRO&quot;</span><span class="p">,</span>
<a id="__codelineno-27-13" name="__codelineno-27-13" href="#__codelineno-27-13"></a><span class="w">      </span><span class="nt">&quot;kilometraje&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-27-14" name="__codelineno-27-14" href="#__codelineno-27-14"></a><span class="w">      </span><span class="nt">&quot;anyoVehiculo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2006</span><span class="p">,</span>
<a id="__codelineno-27-15" name="__codelineno-27-15" href="#__codelineno-27-15"></a><span class="w">      </span><span class="nt">&quot;codigoMotor&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;M47D20&quot;</span><span class="p">,</span>
<a id="__codelineno-27-16" name="__codelineno-27-16" href="#__codelineno-27-16"></a><span class="w">      </span><span class="nt">&quot;codigoCambio&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-27-17" name="__codelineno-27-17" href="#__codelineno-27-17"></a><span class="w">      </span><span class="nt">&quot;observaciones&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-27-18" name="__codelineno-27-18" href="#__codelineno-27-18"></a><span class="w">      </span><span class="nt">&quot;urlsImgs&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-27-19" name="__codelineno-27-19" href="#__codelineno-27-19"></a><span class="w">                </span><span class="s2">&quot;https://cdn11.metasync.com/9QcoK6IHNWwkXAisjXlSocco3IZ94WwjUyYihhJLRMNwnPYqi0JEzw==&quot;</span>
<a id="__codelineno-27-20" name="__codelineno-27-20" href="#__codelineno-27-20"></a><span class="w">            </span><span class="p">],</span>
<a id="__codelineno-27-21" name="__codelineno-27-21" href="#__codelineno-27-21"></a><span class="w">      </span><span class="nt">&quot;codMarca&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;01130&quot;</span><span class="p">,</span>
<a id="__codelineno-27-22" name="__codelineno-27-22" href="#__codelineno-27-22"></a><span class="w">      </span><span class="nt">&quot;nombreMarca&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;BMW&quot;</span><span class="p">,</span>
<a id="__codelineno-27-23" name="__codelineno-27-23" href="#__codelineno-27-23"></a><span class="w">      </span><span class="nt">&quot;codModelo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;01130046&quot;</span><span class="p">,</span>
<a id="__codelineno-27-24" name="__codelineno-27-24" href="#__codelineno-27-24"></a><span class="w">      </span><span class="nt">&quot;nombreModelo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;SERIE 3 BERLINA (E46)&quot;</span><span class="p">,</span>
<a id="__codelineno-27-25" name="__codelineno-27-25" href="#__codelineno-27-25"></a><span class="w">      </span><span class="nt">&quot;codVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;011300460080001&quot;</span><span class="p">,</span>
<a id="__codelineno-27-26" name="__codelineno-27-26" href="#__codelineno-27-26"></a><span class="w">      </span><span class="nt">&quot;nombreVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;320d&quot;</span><span class="p">,</span>
<a id="__codelineno-27-27" name="__codelineno-27-27" href="#__codelineno-27-27"></a><span class="w">      </span><span class="nt">&quot;tipoVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;BerS&quot;</span><span class="p">,</span>
<a id="__codelineno-27-28" name="__codelineno-27-28" href="#__codelineno-27-28"></a><span class="w">      </span><span class="nt">&quot;combustible&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Diesel&quot;</span><span class="p">,</span>
<a id="__codelineno-27-29" name="__codelineno-27-29" href="#__codelineno-27-29"></a><span class="w">      </span><span class="nt">&quot;puertas&quot;</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span>
<a id="__codelineno-27-30" name="__codelineno-27-30" href="#__codelineno-27-30"></a><span class="w">      </span><span class="nt">&quot;anyoInicio&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1998</span><span class="p">,</span>
<a id="__codelineno-27-31" name="__codelineno-27-31" href="#__codelineno-27-31"></a><span class="w">      </span><span class="nt">&quot;anyoFin&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2001</span><span class="p">,</span>
<a id="__codelineno-27-32" name="__codelineno-27-32" href="#__codelineno-27-32"></a><span class="w">      </span><span class="nt">&quot;tiposMotor&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-27-33" name="__codelineno-27-33" href="#__codelineno-27-33"></a><span class="w">          </span><span class="s2">&quot;M47D20&quot;</span><span class="p">,</span>
<a id="__codelineno-27-34" name="__codelineno-27-34" href="#__codelineno-27-34"></a><span class="w">          </span><span class="s2">&quot;M47204D1&quot;</span>
<a id="__codelineno-27-35" name="__codelineno-27-35" href="#__codelineno-27-35"></a><span class="w">      </span><span class="p">],</span>
<a id="__codelineno-27-36" name="__codelineno-27-36" href="#__codelineno-27-36"></a><span class="w">      </span><span class="nt">&quot;potenciaHP&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">136</span><span class="p">,</span>
<a id="__codelineno-27-37" name="__codelineno-27-37" href="#__codelineno-27-37"></a><span class="w">      </span><span class="nt">&quot;potenciaKw&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">100</span><span class="p">,</span>
<a id="__codelineno-27-38" name="__codelineno-27-38" href="#__codelineno-27-38"></a><span class="w">      </span><span class="nt">&quot;cilindrada&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1951</span><span class="p">,</span>
<a id="__codelineno-27-39" name="__codelineno-27-39" href="#__codelineno-27-39"></a><span class="w">      </span><span class="nt">&quot;transmision&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Caja de cambios 5 velocidades&quot;</span><span class="p">,</span>
<a id="__codelineno-27-40" name="__codelineno-27-40" href="#__codelineno-27-40"></a><span class="w">      </span><span class="nt">&quot;alimentacion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-27-41" name="__codelineno-27-41" href="#__codelineno-27-41"></a><span class="w">      </span><span class="nt">&quot;numMarchas&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">5</span><span class="p">,</span>
<a id="__codelineno-27-42" name="__codelineno-27-42" href="#__codelineno-27-42"></a><span class="w">      </span><span class="nt">&quot;rvCode&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;34242&quot;</span><span class="p">,</span>
<a id="__codelineno-27-43" name="__codelineno-27-43" href="#__codelineno-27-43"></a><span class="w">      </span><span class="nt">&quot;ktype&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;15638&quot;</span>
<a id="__codelineno-27-44" name="__codelineno-27-44" href="#__codelineno-27-44"></a><span class="w">  </span><span class="p">},</span>
</code></pre></div>
<h5 id="explicacion-vehiculo_1">Explicación vehículo<a class="headerlink" href="#explicacion-vehiculo_1" title="Permanent link">&para;</a></h5>
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
<td><code>idLocal</code></td>
<td>int32</td>
<td>Identificador local del vehículo.</td>
</tr>
<tr>
<td><code>idEmpresa</code></td>
<td>int32</td>
<td>Identificador de la empresa propietaria del vehículo.</td>
</tr>
<tr>
<td><code>fechaMod</code></td>
<td>string</td>
<td>Fecha y hora de la última modificación de la información del vehículo (ejemplo: "2024-01-30T15:42:34").</td>
</tr>
<tr>
<td><code>codigo</code></td>
<td>string</td>
<td>Código único del vehículo.</td>
</tr>
<tr>
<td><code>estado</code></td>
<td>array(int32)</td>
<td>Lista de estados del vehículo.(EnTramite, Revisado, Despiezado, Calculado, EnCampa, Destruido, Procesando, Baja, EnVenta, Sideo, ErrorCalculo, Valorado, Descontaminado, Tasado, ErrorAugias, Otros)</td>
</tr>
<tr>
<td><code>bastidor</code></td>
<td>string</td>
<td>Número de bastidor del vehículo.</td>
</tr>
<tr>
<td><code>matricula</code></td>
<td>string</td>
<td>Número de matrícula del vehículo.</td>
</tr>
<tr>
<td><code>color</code></td>
<td>string</td>
<td>Color del vehículo.</td>
</tr>
<tr>
<td><code>kilometraje</code></td>
<td>int32</td>
<td>Kilometraje actual del vehículo.</td>
</tr>
<tr>
<td><code>anyoVehiculo</code></td>
<td>int32</td>
<td>Año de fabricación del vehículo.</td>
</tr>
<tr>
<td><code>codigoMotor</code></td>
<td>string</td>
<td>Código del motor del vehículo.</td>
</tr>
<tr>
<td><code>codigoCambio</code></td>
<td>string</td>
<td>Código de cambio del vehículo.</td>
</tr>
<tr>
<td><code>observaciones</code></td>
<td>string</td>
<td>Observaciones adicionales sobre el vehículo.</td>
</tr>
<tr>
<td><code>urlsImgs</code></td>
<td>array(strings)</td>
<td>Lista de URLs de imágenes representativas del vehículo.</td>
</tr>
<tr>
<td><code>codMarca</code></td>
<td>string</td>
<td>Código de marca del vehículo.</td>
</tr>
<tr>
<td><code>nombreMarca</code></td>
<td>string</td>
<td>Nombre de la marca del vehículo.</td>
</tr>
<tr>
<td><code>codModelo</code></td>
<td>string</td>
<td>Código del modelo del vehículo.</td>
</tr>
<tr>
<td><code>nombreModelo</code></td>
<td>string</td>
<td>Nombre del modelo del vehículo.</td>
</tr>
<tr>
<td><code>codVersion</code></td>
<td>string</td>
<td>Código de versión del vehículo.</td>
</tr>
<tr>
<td><code>nombreVersion</code></td>
<td>string</td>
<td>Nombre de la versión del vehículo.</td>
</tr>
<tr>
<td><code>tipoVersion</code></td>
<td>string</td>
<td>Tipo de versión del vehículo.</td>
</tr>
<tr>
<td><code>combustible</code></td>
<td>string</td>
<td>Tipo de combustible del vehículo.</td>
</tr>
<tr>
<td><code>puertas</code></td>
<td>int32</td>
<td>Número de puertas del vehículo.</td>
</tr>
<tr>
<td><code>anyoInicio</code></td>
<td>int32</td>
<td>Año de inicio de producción del vehículo.</td>
</tr>
<tr>
<td><code>anyoFin</code></td>
<td>int32</td>
<td>Año de fin de producción del vehículo.</td>
</tr>
<tr>
<td><code>tiposMotor</code></td>
<td>array(string)</td>
<td>Lista de tipos de motor del vehículo.</td>
</tr>
<tr>
<td><code>potenciaHP</code></td>
<td>int32</td>
<td>Potencia del motor en caballos de fuerza.</td>
</tr>
<tr>
<td><code>potenciaKw</code></td>
<td>int32</td>
<td>Potencia del motor en kilovatios.</td>
</tr>
<tr>
<td><code>cilindrada</code></td>
<td>int32</td>
<td>Cilindrada del motor.</td>
</tr>
<tr>
<td><code>transmision</code></td>
<td>string</td>
<td>Tipo de transmisión del vehículo.</td>
</tr>
<tr>
<td><code>alimentacion</code></td>
<td>string</td>
<td>Tipo de alimentación del vehículo.</td>
</tr>
<tr>
<td><code>numMarchas</code></td>
<td>int32</td>
<td>Número de marchas de la transmisión del vehículo.</td>
</tr>
<tr>
<td><code>rvCode</code></td>
<td>string</td>
<td>Código de versión del catálogo de Recambio Verde</td>
</tr>
<tr>
<td><code>ktype</code></td>
<td>string</td>
<td>Identificador unico que hace referencia a la version de ese vehiculo</td>
</tr>
</tbody>
</table>
<h4 id="result_set_1">Result_set<a class="headerlink" href="#result_set_1" title="Permanent link">&para;</a></h4>
<div class="highlight"><span class="filename">result_set</span><pre><span></span><code><a id="__codelineno-28-1" name="__codelineno-28-1" href="#__codelineno-28-1"></a><span class="w">    </span><span class="nt">&quot;result_set&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-28-2" name="__codelineno-28-2" href="#__codelineno-28-2"></a><span class="w">        </span><span class="nt">&quot;total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">10696</span><span class="p">,</span>
<a id="__codelineno-28-3" name="__codelineno-28-3" href="#__codelineno-28-3"></a><span class="w">        </span><span class="nt">&quot;count&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1000</span><span class="p">,</span>
<a id="__codelineno-28-4" name="__codelineno-28-4" href="#__codelineno-28-4"></a><span class="w">        </span><span class="nt">&quot;offset&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1000</span><span class="p">,</span>
<a id="__codelineno-28-5" name="__codelineno-28-5" href="#__codelineno-28-5"></a><span class="w">        </span><span class="nt">&quot;lastId&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1946873</span>
<a id="__codelineno-28-6" name="__codelineno-28-6" href="#__codelineno-28-6"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div>
<p><strong>Datos result_set</strong>:</p>
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
<td><code>lastid</code></td>
<td>int32</td>
<td>Última id de pieza que recibimos para pasar a la siguiente iteración</td>
</tr>
<tr>
<td><code>offset</code></td>
<td>int32</td>
<td>Cantidad de datos que deseamos recuperar max 1000</td>
</tr>
<tr>
<td><code>total</code></td>
<td>int32</td>
<td>Cantidad total de piezas</td>
</tr>
<tr>
<td><code>count</code></td>
<td>int32</td>
<td>Cantidad de datos encontrados en esa iteración max 1000</td>
</tr>
</tbody>
</table>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Si el count fuese 0 y estuviesemos recorriendo la paginación habremos llegado al final del inventario.</p>
<p>Si el count fuese &lt; que offset también indicaria que estamos en la última tanda de la paginación.</p>
</div>
<h3 id="recuperarcambiosvehiculoscanal"><strong>RecuperarCambiosVehiculosCanal</strong><a class="headerlink" href="#recuperarcambiosvehiculoscanal" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>RecuperarCambiosVehiculosCanal</mark>} permite recuperar información general sobre vehiculos de empresas.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Almacen/RecuperarCambiosVehiculosCanal</p>
</div>
<div class="annotate">
<blockquote>
<p>Respuesta: --&gt; (1) &lt;--</p>
</blockquote>
</div>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">response:</span><pre><span></span><code><a id="__codelineno-29-1" name="__codelineno-29-1" href="#__codelineno-29-1"></a><span class="p">{</span>
<a id="__codelineno-29-2" name="__codelineno-29-2" href="#__codelineno-29-2"></a><span class="w">    </span><span class="nt">&quot;vehiculos&quot;</span><span class="p">:[</span>
<a id="__codelineno-29-3" name="__codelineno-29-3" href="#__codelineno-29-3"></a><span class="w">        </span><span class="nt">&quot;idLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">49595</span><span class="p">,</span>
<a id="__codelineno-29-4" name="__codelineno-29-4" href="#__codelineno-29-4"></a><span class="w">        </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-29-5" name="__codelineno-29-5" href="#__codelineno-29-5"></a><span class="w">        </span><span class="nt">&quot;fechaMod&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2024-01-30T15:42:34&quot;</span><span class="p">,</span>
<a id="__codelineno-29-6" name="__codelineno-29-6" href="#__codelineno-29-6"></a><span class="w">    </span><span class="err">...</span>
<a id="__codelineno-29-7" name="__codelineno-29-7" href="#__codelineno-29-7"></a><span class="w">    </span><span class="p">],</span>
<a id="__codelineno-29-8" name="__codelineno-29-8" href="#__codelineno-29-8"></a><span class="w">    </span><span class="nt">&quot;result_set&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-29-9" name="__codelineno-29-9" href="#__codelineno-29-9"></a><span class="w">            </span><span class="nt">&quot;total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">10695</span><span class="p">,</span>
<a id="__codelineno-29-10" name="__codelineno-29-10" href="#__codelineno-29-10"></a><span class="w">            </span><span class="nt">&quot;count&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">500</span><span class="p">,</span>
<a id="__codelineno-29-11" name="__codelineno-29-11" href="#__codelineno-29-11"></a><span class="w">            </span><span class="nt">&quot;offset&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">500</span><span class="p">,</span>
<a id="__codelineno-29-12" name="__codelineno-29-12" href="#__codelineno-29-12"></a><span class="w">            </span><span class="nt">&quot;lastId&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1945959</span>
<a id="__codelineno-29-13" name="__codelineno-29-13" href="#__codelineno-29-13"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-29-14" name="__codelineno-29-14" href="#__codelineno-29-14"></a><span class="p">}</span>
</code></pre></div></li>
</ol>
<p><strong>Parámetros de RecuperarCambiosVehiculosCanal:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>Ejemplo</th>
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
<td><code>fecha</code></td>
<td>Header</td>
<td>(20/12/2023 21:29:56)</td>
<td>Required</td>
<td>string</td>
<td>Fecha a partir de la cual deseamos obtener vehículos</td>
</tr>
<tr>
<td><code>lastid</code></td>
<td>Header</td>
<td>(0)</td>
<td>Required</td>
<td>int32</td>
<td>Utilizar el LastId devuelto en el Result_Set de la Paginación para obtener la siguiente tanda de piezas y sus vehículos</td>
</tr>
<tr>
<td><code>offset</code></td>
<td>Header</td>
<td>(0)</td>
<td>Required</td>
<td>int32</td>
<td>Cantidad de piezas que deseamos recuperar con un límite máximo de 1000</td>
</tr>
</tbody>
</table>
<div class="admonition warning">
<p class="admonition-title">Fecha superior a todos los vehículos</p>
<p class="annotate">Si la fecha de parámetros es superior a las fechas de los vehículos obtendrás un resultado vacío parecido a este (1)</p>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">Response null</span><pre><span></span><code><a id="__codelineno-30-1" name="__codelineno-30-1" href="#__codelineno-30-1"></a><span class="p">{</span>
<a id="__codelineno-30-2" name="__codelineno-30-2" href="#__codelineno-30-2"></a><span class="w">    </span><span class="nt">&quot;vehiculos&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[],</span>
<a id="__codelineno-30-3" name="__codelineno-30-3" href="#__codelineno-30-3"></a><span class="w">    </span><span class="nt">&quot;result_set&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-30-4" name="__codelineno-30-4" href="#__codelineno-30-4"></a><span class="w">        </span><span class="nt">&quot;total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-30-5" name="__codelineno-30-5" href="#__codelineno-30-5"></a><span class="w">        </span><span class="nt">&quot;count&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-30-6" name="__codelineno-30-6" href="#__codelineno-30-6"></a><span class="w">        </span><span class="nt">&quot;offset&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1000</span><span class="p">,</span>
<a id="__codelineno-30-7" name="__codelineno-30-7" href="#__codelineno-30-7"></a><span class="w">        </span><span class="nt">&quot;lastId&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-30-8" name="__codelineno-30-8" href="#__codelineno-30-8"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-30-9" name="__codelineno-30-9" href="#__codelineno-30-9"></a><span class="p">}</span>
</code></pre></div></li>
</ol>
</div>
<div class="tabbed-set tabbed-alternate" data-tabs="3:5"><input checked="checked" id="__tabbed_3_1" name="__tabbed_3" type="radio" /><input id="__tabbed_3_2" name="__tabbed_3" type="radio" /><input id="__tabbed_3_3" name="__tabbed_3" type="radio" /><input id="__tabbed_3_4" name="__tabbed_3" type="radio" /><input id="__tabbed_3_5" name="__tabbed_3" type="radio" /><div class="tabbed-labels"><label for="__tabbed_3_1">C#</label><label for="__tabbed_3_2">java</label><label for="__tabbed_3_3">python</label><label for="__tabbed_3_4">javascript</label><label for="__tabbed_3_5">Ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-31-1" name="__codelineno-31-1" href="#__codelineno-31-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-31-2" name="__codelineno-31-2" href="#__codelineno-31-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-31-3" name="__codelineno-31-3" href="#__codelineno-31-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/RecuperarCambiosVehiculosCanal&quot;</span><span class="p">);</span>
<a id="__codelineno-31-4" name="__codelineno-31-4" href="#__codelineno-31-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-31-5" name="__codelineno-31-5" href="#__codelineno-31-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-31-6" name="__codelineno-31-6" href="#__codelineno-31-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;lastid&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">lastid</span><span class="p">);</span>
<a id="__codelineno-31-7" name="__codelineno-31-7" href="#__codelineno-31-7"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;offset&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">offset</span><span class="p">);</span>
<a id="__codelineno-31-8" name="__codelineno-31-8" href="#__codelineno-31-8"></a>
<a id="__codelineno-31-9" name="__codelineno-31-9" href="#__codelineno-31-9"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-31-10" name="__codelineno-31-10" href="#__codelineno-31-10"></a>
<a id="__codelineno-31-11" name="__codelineno-31-11" href="#__codelineno-31-11"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-32-1" name="__codelineno-32-1" href="#__codelineno-32-1"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.CloseableHttpResponse</span><span class="p">;</span>
<a id="__codelineno-32-2" name="__codelineno-32-2" href="#__codelineno-32-2"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.HttpPost</span><span class="p">;</span>
<a id="__codelineno-32-3" name="__codelineno-32-3" href="#__codelineno-32-3"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.entity.StringEntity</span><span class="p">;</span>
<a id="__codelineno-32-4" name="__codelineno-32-4" href="#__codelineno-32-4"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.CloseableHttpClient</span><span class="p">;</span>
<a id="__codelineno-32-5" name="__codelineno-32-5" href="#__codelineno-32-5"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.HttpClients</span><span class="p">;</span>
<a id="__codelineno-32-6" name="__codelineno-32-6" href="#__codelineno-32-6"></a>
<a id="__codelineno-32-7" name="__codelineno-32-7" href="#__codelineno-32-7"></a><span class="w">    </span><span class="kn">import</span><span class="w"> </span><span class="nn">java.io.IOException</span><span class="p">;</span>
<a id="__codelineno-32-8" name="__codelineno-32-8" href="#__codelineno-32-8"></a>
<a id="__codelineno-32-9" name="__codelineno-32-9" href="#__codelineno-32-9"></a><span class="w">    </span><span class="kd">public</span><span class="w"> </span><span class="kd">class</span> <span class="nc">Main</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-32-10" name="__codelineno-32-10" href="#__codelineno-32-10"></a><span class="w">        </span><span class="kd">public</span><span class="w"> </span><span class="kd">static</span><span class="w"> </span><span class="kt">void</span><span class="w"> </span><span class="nf">main</span><span class="p">(</span><span class="n">String</span><span class="o">[]</span><span class="w"> </span><span class="n">args</span><span class="p">)</span><span class="w"> </span><span class="kd">throws</span><span class="w"> </span><span class="n">IOException</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-32-11" name="__codelineno-32-11" href="#__codelineno-32-11"></a><span class="w">            </span><span class="n">String</span><span class="w"> </span><span class="n">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-32-12" name="__codelineno-32-12" href="#__codelineno-32-12"></a><span class="w">            </span><span class="n">String</span><span class="w"> </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_date&quot;</span><span class="p">;</span>
<a id="__codelineno-32-13" name="__codelineno-32-13" href="#__codelineno-32-13"></a><span class="w">            </span><span class="n">Integer</span><span class="w"> </span><span class="n">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span><span class="p">;</span>
<a id="__codelineno-32-14" name="__codelineno-32-14" href="#__codelineno-32-14"></a><span class="w">            </span><span class="n">Integer</span><span class="w"> </span><span class="n">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span><span class="p">;</span>
<a id="__codelineno-32-15" name="__codelineno-32-15" href="#__codelineno-32-15"></a>
<a id="__codelineno-32-16" name="__codelineno-32-16" href="#__codelineno-32-16"></a><span class="w">            </span><span class="n">CloseableHttpClient</span><span class="w"> </span><span class="n">httpClient</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClients</span><span class="p">.</span><span class="na">createDefault</span><span class="p">();</span>
<a id="__codelineno-32-17" name="__codelineno-32-17" href="#__codelineno-32-17"></a><span class="w">            </span><span class="n">HttpPost</span><span class="w"> </span><span class="n">httpPost</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">HttpPost</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/RecuperarCambiosVehiculosCanal&quot;</span><span class="p">);</span>
<a id="__codelineno-32-18" name="__codelineno-32-18" href="#__codelineno-32-18"></a><span class="w">            </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-32-19" name="__codelineno-32-19" href="#__codelineno-32-19"></a><span class="w">            </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">);</span>
<a id="__codelineno-32-20" name="__codelineno-32-20" href="#__codelineno-32-20"></a><span class="w">            </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;lastid&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">lastid</span><span class="p">);</span>
<a id="__codelineno-32-21" name="__codelineno-32-21" href="#__codelineno-32-21"></a><span class="w">            </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;offset&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">offset</span><span class="p">);</span>
<a id="__codelineno-32-22" name="__codelineno-32-22" href="#__codelineno-32-22"></a>
<a id="__codelineno-32-23" name="__codelineno-32-23" href="#__codelineno-32-23"></a><span class="w">            </span><span class="n">CloseableHttpResponse</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">httpClient</span><span class="p">.</span><span class="na">execute</span><span class="p">(</span><span class="n">httpPost</span><span class="p">);</span>
<a id="__codelineno-32-24" name="__codelineno-32-24" href="#__codelineno-32-24"></a>
<a id="__codelineno-32-25" name="__codelineno-32-25" href="#__codelineno-32-25"></a><span class="w">            </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">getEntity</span><span class="p">().</span><span class="na">getContent</span><span class="p">().</span><span class="na">toString</span><span class="p">());</span>
<a id="__codelineno-32-26" name="__codelineno-32-26" href="#__codelineno-32-26"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-32-27" name="__codelineno-32-27" href="#__codelineno-32-27"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-33-1" name="__codelineno-33-1" href="#__codelineno-33-1"></a>    <span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-33-2" name="__codelineno-33-2" href="#__codelineno-33-2"></a>
<a id="__codelineno-33-3" name="__codelineno-33-3" href="#__codelineno-33-3"></a>    <span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
<a id="__codelineno-33-4" name="__codelineno-33-4" href="#__codelineno-33-4"></a>        <span class="n">api_key</span> <span class="o">=</span> <span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-33-5" name="__codelineno-33-5" href="#__codelineno-33-5"></a>        <span class="n">fecha</span> <span class="o">=</span> <span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-33-6" name="__codelineno-33-6" href="#__codelineno-33-6"></a>        <span class="n">lastid</span> <span class="o">=</span> <span class="s1">&#39;your_last_id&#39;</span>
<a id="__codelineno-33-7" name="__codelineno-33-7" href="#__codelineno-33-7"></a>        <span class="n">offset</span> <span class="o">=</span> <span class="s1">&#39;your_offset&#39;</span>
<a id="__codelineno-33-8" name="__codelineno-33-8" href="#__codelineno-33-8"></a>
<a id="__codelineno-33-9" name="__codelineno-33-9" href="#__codelineno-33-9"></a>        <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-33-10" name="__codelineno-33-10" href="#__codelineno-33-10"></a>            <span class="s1">&#39;apiKey&#39;</span><span class="p">:</span> <span class="n">api_key</span><span class="p">,</span>
<a id="__codelineno-33-11" name="__codelineno-33-11" href="#__codelineno-33-11"></a>            <span class="s1">&#39;fecha&#39;</span><span class="p">:</span> <span class="n">fecha</span><span class="p">,</span>
<a id="__codelineno-33-12" name="__codelineno-33-12" href="#__codelineno-33-12"></a>            <span class="s1">&#39;lastid&#39;</span><span class="p">:</span> <span class="n">lastid</span><span class="p">,</span>
<a id="__codelineno-33-13" name="__codelineno-33-13" href="#__codelineno-33-13"></a>            <span class="s1">&#39;offset&#39;</span><span class="p">:</span> <span class="n">offset</span>
<a id="__codelineno-33-14" name="__codelineno-33-14" href="#__codelineno-33-14"></a>        <span class="p">}</span>
<a id="__codelineno-33-15" name="__codelineno-33-15" href="#__codelineno-33-15"></a>
<a id="__codelineno-33-16" name="__codelineno-33-16" href="#__codelineno-33-16"></a>        <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/RecuperarCambiosVehiculosCanal&#39;</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-33-17" name="__codelineno-33-17" href="#__codelineno-33-17"></a>
<a id="__codelineno-33-18" name="__codelineno-33-18" href="#__codelineno-33-18"></a>        <span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">)</span>
<a id="__codelineno-33-19" name="__codelineno-33-19" href="#__codelineno-33-19"></a>
<a id="__codelineno-33-20" name="__codelineno-33-20" href="#__codelineno-33-20"></a>    <span class="k">if</span> <span class="vm">__name__</span> <span class="o">==</span> <span class="s2">&quot;__main__&quot;</span><span class="p">:</span>
<a id="__codelineno-33-21" name="__codelineno-33-21" href="#__codelineno-33-21"></a>        <span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-34-1" name="__codelineno-34-1" href="#__codelineno-34-1"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-34-2" name="__codelineno-34-2" href="#__codelineno-34-2"></a>
<a id="__codelineno-34-3" name="__codelineno-34-3" href="#__codelineno-34-3"></a><span class="w">    </span><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">main</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-34-4" name="__codelineno-34-4" href="#__codelineno-34-4"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span><span class="p">;</span>
<a id="__codelineno-34-5" name="__codelineno-34-5" href="#__codelineno-34-5"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span><span class="p">;</span>
<a id="__codelineno-34-6" name="__codelineno-34-6" href="#__codelineno-34-6"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mf">0</span><span class="p">;</span>
<a id="__codelineno-34-7" name="__codelineno-34-7" href="#__codelineno-34-7"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mf">0</span><span class="p">;</span>
<a id="__codelineno-34-8" name="__codelineno-34-8" href="#__codelineno-34-8"></a>
<a id="__codelineno-34-9" name="__codelineno-34-9" href="#__codelineno-34-9"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/RecuperarCambiosVehiculosCanal&#39;</span><span class="p">,</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-34-10" name="__codelineno-34-10" href="#__codelineno-34-10"></a><span class="w">            </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-34-11" name="__codelineno-34-11" href="#__codelineno-34-11"></a><span class="w">            </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-34-12" name="__codelineno-34-12" href="#__codelineno-34-12"></a><span class="w">                </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-34-13" name="__codelineno-34-13" href="#__codelineno-34-13"></a><span class="w">                </span><span class="s1">&#39;fecha&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">fecha</span><span class="p">,</span>
<a id="__codelineno-34-14" name="__codelineno-34-14" href="#__codelineno-34-14"></a><span class="w">                </span><span class="s1">&#39;lastid&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">lastid</span><span class="p">,</span>
<a id="__codelineno-34-15" name="__codelineno-34-15" href="#__codelineno-34-15"></a><span class="w">                </span><span class="s1">&#39;offset&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">offset</span>
<a id="__codelineno-34-16" name="__codelineno-34-16" href="#__codelineno-34-16"></a><span class="w">            </span><span class="p">}</span>
<a id="__codelineno-34-17" name="__codelineno-34-17" href="#__codelineno-34-17"></a><span class="w">        </span><span class="p">});</span>
<a id="__codelineno-34-18" name="__codelineno-34-18" href="#__codelineno-34-18"></a>
<a id="__codelineno-34-19" name="__codelineno-34-19" href="#__codelineno-34-19"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<a id="__codelineno-34-20" name="__codelineno-34-20" href="#__codelineno-34-20"></a><span class="w">        </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-34-21" name="__codelineno-34-21" href="#__codelineno-34-21"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-34-22" name="__codelineno-34-22" href="#__codelineno-34-22"></a>
<a id="__codelineno-34-23" name="__codelineno-34-23" href="#__codelineno-34-23"></a><span class="w">    </span><span class="nx">main</span><span class="p">();</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-35-1" name="__codelineno-35-1" href="#__codelineno-35-1"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-35-2" name="__codelineno-35-2" href="#__codelineno-35-2"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-35-3" name="__codelineno-35-3" href="#__codelineno-35-3"></a>
<a id="__codelineno-35-4" name="__codelineno-35-4" href="#__codelineno-35-4"></a><span class="w">    </span><span class="k">def</span><span class="w"> </span><span class="nf">main</span>
<a id="__codelineno-35-5" name="__codelineno-35-5" href="#__codelineno-35-5"></a><span class="w">        </span><span class="n">api_key</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-35-6" name="__codelineno-35-6" href="#__codelineno-35-6"></a><span class="w">        </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-35-7" name="__codelineno-35-7" href="#__codelineno-35-7"></a><span class="w">        </span><span class="n">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-35-8" name="__codelineno-35-8" href="#__codelineno-35-8"></a><span class="w">        </span><span class="n">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-35-9" name="__codelineno-35-9" href="#__codelineno-35-9"></a>
<a id="__codelineno-35-10" name="__codelineno-35-10" href="#__codelineno-35-10"></a><span class="w">        </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/RecuperarCambiosVehiculosCanal&quot;</span><span class="p">)</span>
<a id="__codelineno-35-11" name="__codelineno-35-11" href="#__codelineno-35-11"></a>
<a id="__codelineno-35-12" name="__codelineno-35-12" href="#__codelineno-35-12"></a><span class="w">        </span><span class="n">https</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-35-13" name="__codelineno-35-13" href="#__codelineno-35-13"></a><span class="w">        </span><span class="n">https</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-35-14" name="__codelineno-35-14" href="#__codelineno-35-14"></a>
<a id="__codelineno-35-15" name="__codelineno-35-15" href="#__codelineno-35-15"></a><span class="w">        </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-35-16" name="__codelineno-35-16" href="#__codelineno-35-16"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">api_key</span>
<a id="__codelineno-35-17" name="__codelineno-35-17" href="#__codelineno-35-17"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;fecha&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">fecha</span>
<a id="__codelineno-35-18" name="__codelineno-35-18" href="#__codelineno-35-18"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;lastid&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">lastid</span>
<a id="__codelineno-35-19" name="__codelineno-35-19" href="#__codelineno-35-19"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;offset&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">offset</span>
<a id="__codelineno-35-20" name="__codelineno-35-20" href="#__codelineno-35-20"></a>
<a id="__codelineno-35-21" name="__codelineno-35-21" href="#__codelineno-35-21"></a><span class="w">        </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">https</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-35-22" name="__codelineno-35-22" href="#__codelineno-35-22"></a><span class="w">        </span><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">read_body</span>
<a id="__codelineno-35-23" name="__codelineno-35-23" href="#__codelineno-35-23"></a><span class="w">    </span><span class="k">end</span>
<a id="__codelineno-35-24" name="__codelineno-35-24" href="#__codelineno-35-24"></a>
<a id="__codelineno-35-25" name="__codelineno-35-25" href="#__codelineno-35-25"></a><span class="w">    </span><span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
</div>
</div>
<h4 id="vehiculo_2">Vehículo<a class="headerlink" href="#vehiculo_2" title="Permanent link">&para;</a></h4>
<div class="highlight"><span class="filename">vehiculo</span><pre><span></span><code><a id="__codelineno-36-1" name="__codelineno-36-1" href="#__codelineno-36-1"></a><span class="w">    </span><span class="p">{</span>
<a id="__codelineno-36-2" name="__codelineno-36-2" href="#__codelineno-36-2"></a><span class="w">      </span><span class="nt">&quot;idLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">49595</span><span class="p">,</span>
<a id="__codelineno-36-3" name="__codelineno-36-3" href="#__codelineno-36-3"></a><span class="w">      </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-36-4" name="__codelineno-36-4" href="#__codelineno-36-4"></a><span class="w">      </span><span class="nt">&quot;fechaMod&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2024-01-30T15:42:34&quot;</span><span class="p">,</span>
<a id="__codelineno-36-5" name="__codelineno-36-5" href="#__codelineno-36-5"></a><span class="w">      </span><span class="nt">&quot;codigo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;10424&quot;</span><span class="p">,</span>
<a id="__codelineno-36-6" name="__codelineno-36-6" href="#__codelineno-36-6"></a><span class="w">      </span><span class="nt">&quot;estado&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-36-7" name="__codelineno-36-7" href="#__codelineno-36-7"></a><span class="w">          </span><span class="mi">15</span><span class="p">,</span>
<a id="__codelineno-36-8" name="__codelineno-36-8" href="#__codelineno-36-8"></a><span class="w">          </span><span class="mi">5</span>
<a id="__codelineno-36-9" name="__codelineno-36-9" href="#__codelineno-36-9"></a><span class="w">      </span><span class="p">],</span>
<a id="__codelineno-36-10" name="__codelineno-36-10" href="#__codelineno-36-10"></a><span class="w">      </span><span class="nt">&quot;bastidor&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;WBAAL71070CF45890&quot;</span><span class="p">,</span>
<a id="__codelineno-36-11" name="__codelineno-36-11" href="#__codelineno-36-11"></a><span class="w">      </span><span class="nt">&quot;matricula&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2658-FFD&quot;</span><span class="p">,</span>
<a id="__codelineno-36-12" name="__codelineno-36-12" href="#__codelineno-36-12"></a><span class="w">      </span><span class="nt">&quot;color&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;NEGRO&quot;</span><span class="p">,</span>
<a id="__codelineno-36-13" name="__codelineno-36-13" href="#__codelineno-36-13"></a><span class="w">      </span><span class="nt">&quot;kilometraje&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-36-14" name="__codelineno-36-14" href="#__codelineno-36-14"></a><span class="w">      </span><span class="nt">&quot;anyoVehiculo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2006</span><span class="p">,</span>
<a id="__codelineno-36-15" name="__codelineno-36-15" href="#__codelineno-36-15"></a><span class="w">      </span><span class="nt">&quot;codigoMotor&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;M47D20&quot;</span><span class="p">,</span>
<a id="__codelineno-36-16" name="__codelineno-36-16" href="#__codelineno-36-16"></a><span class="w">      </span><span class="nt">&quot;codigoCambio&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-36-17" name="__codelineno-36-17" href="#__codelineno-36-17"></a><span class="w">      </span><span class="nt">&quot;observaciones&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-36-18" name="__codelineno-36-18" href="#__codelineno-36-18"></a><span class="w">      </span><span class="nt">&quot;urlsImgs&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-36-19" name="__codelineno-36-19" href="#__codelineno-36-19"></a><span class="w">                </span><span class="s2">&quot;https://cdn11.metasync.com/9QcoK6IHNWwkXAisjXlSocco3IZ94WwjUyYihhJLRMNwnPYqi0JEzw==&quot;</span>
<a id="__codelineno-36-20" name="__codelineno-36-20" href="#__codelineno-36-20"></a><span class="w">            </span><span class="p">],</span>
<a id="__codelineno-36-21" name="__codelineno-36-21" href="#__codelineno-36-21"></a><span class="w">      </span><span class="nt">&quot;codMarca&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;01130&quot;</span><span class="p">,</span>
<a id="__codelineno-36-22" name="__codelineno-36-22" href="#__codelineno-36-22"></a><span class="w">      </span><span class="nt">&quot;nombreMarca&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;BMW&quot;</span><span class="p">,</span>
<a id="__codelineno-36-23" name="__codelineno-36-23" href="#__codelineno-36-23"></a><span class="w">      </span><span class="nt">&quot;codModelo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;01130046&quot;</span><span class="p">,</span>
<a id="__codelineno-36-24" name="__codelineno-36-24" href="#__codelineno-36-24"></a><span class="w">      </span><span class="nt">&quot;nombreModelo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;SERIE 3 BERLINA (E46)&quot;</span><span class="p">,</span>
<a id="__codelineno-36-25" name="__codelineno-36-25" href="#__codelineno-36-25"></a><span class="w">      </span><span class="nt">&quot;codVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;011300460080001&quot;</span><span class="p">,</span>
<a id="__codelineno-36-26" name="__codelineno-36-26" href="#__codelineno-36-26"></a><span class="w">      </span><span class="nt">&quot;nombreVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;320d&quot;</span><span class="p">,</span>
<a id="__codelineno-36-27" name="__codelineno-36-27" href="#__codelineno-36-27"></a><span class="w">      </span><span class="nt">&quot;tipoVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;BerS&quot;</span><span class="p">,</span>
<a id="__codelineno-36-28" name="__codelineno-36-28" href="#__codelineno-36-28"></a><span class="w">      </span><span class="nt">&quot;combustible&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Diesel&quot;</span><span class="p">,</span>
<a id="__codelineno-36-29" name="__codelineno-36-29" href="#__codelineno-36-29"></a><span class="w">      </span><span class="nt">&quot;puertas&quot;</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span>
<a id="__codelineno-36-30" name="__codelineno-36-30" href="#__codelineno-36-30"></a><span class="w">      </span><span class="nt">&quot;anyoInicio&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1998</span><span class="p">,</span>
<a id="__codelineno-36-31" name="__codelineno-36-31" href="#__codelineno-36-31"></a><span class="w">      </span><span class="nt">&quot;anyoFin&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2001</span><span class="p">,</span>
<a id="__codelineno-36-32" name="__codelineno-36-32" href="#__codelineno-36-32"></a><span class="w">      </span><span class="nt">&quot;tiposMotor&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-36-33" name="__codelineno-36-33" href="#__codelineno-36-33"></a><span class="w">          </span><span class="s2">&quot;M47D20&quot;</span><span class="p">,</span>
<a id="__codelineno-36-34" name="__codelineno-36-34" href="#__codelineno-36-34"></a><span class="w">          </span><span class="s2">&quot;M47204D1&quot;</span>
<a id="__codelineno-36-35" name="__codelineno-36-35" href="#__codelineno-36-35"></a><span class="w">      </span><span class="p">],</span>
<a id="__codelineno-36-36" name="__codelineno-36-36" href="#__codelineno-36-36"></a><span class="w">      </span><span class="nt">&quot;potenciaHP&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">136</span><span class="p">,</span>
<a id="__codelineno-36-37" name="__codelineno-36-37" href="#__codelineno-36-37"></a><span class="w">      </span><span class="nt">&quot;potenciaKw&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">100</span><span class="p">,</span>
<a id="__codelineno-36-38" name="__codelineno-36-38" href="#__codelineno-36-38"></a><span class="w">      </span><span class="nt">&quot;cilindrada&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1951</span><span class="p">,</span>
<a id="__codelineno-36-39" name="__codelineno-36-39" href="#__codelineno-36-39"></a><span class="w">      </span><span class="nt">&quot;transmision&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Caja de cambios 5 velocidades&quot;</span><span class="p">,</span>
<a id="__codelineno-36-40" name="__codelineno-36-40" href="#__codelineno-36-40"></a><span class="w">      </span><span class="nt">&quot;alimentacion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-36-41" name="__codelineno-36-41" href="#__codelineno-36-41"></a><span class="w">      </span><span class="nt">&quot;numMarchas&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">5</span><span class="p">,</span>
<a id="__codelineno-36-42" name="__codelineno-36-42" href="#__codelineno-36-42"></a><span class="w">      </span><span class="nt">&quot;rvCode&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;34242&quot;</span><span class="p">,</span>
<a id="__codelineno-36-43" name="__codelineno-36-43" href="#__codelineno-36-43"></a><span class="w">      </span><span class="nt">&quot;ktype&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;15638&quot;</span>
<a id="__codelineno-36-44" name="__codelineno-36-44" href="#__codelineno-36-44"></a><span class="w">  </span><span class="p">},</span>
</code></pre></div>
<h5 id="explicacion-vehiculo_2">Explicación vehículo<a class="headerlink" href="#explicacion-vehiculo_2" title="Permanent link">&para;</a></h5>
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
<td><code>idLocal</code></td>
<td>int32</td>
<td>Identificador local del vehículo.</td>
</tr>
<tr>
<td><code>idEmpresa</code></td>
<td>int32</td>
<td>Identificador de la empresa propietaria del vehículo.</td>
</tr>
<tr>
<td><code>fechaMod</code></td>
<td>string</td>
<td>Fecha y hora de la última modificación de la información del vehículo (ejemplo: "2024-01-30T15:42:34").</td>
</tr>
<tr>
<td><code>codigo</code></td>
<td>string</td>
<td>Código único del vehículo.</td>
</tr>
<tr>
<td><code>estado</code></td>
<td>array(int32)</td>
<td>Lista de estados del vehículo.(EnTramite, Revisado, Despiezado, Calculado, EnCampa, Destruido, Procesando, Baja, EnVenta, Sideo, ErrorCalculo, Valorado, Descontaminado, Tasado, ErrorAugias, Otros)</td>
</tr>
<tr>
<td><code>bastidor</code></td>
<td>string</td>
<td>Número de bastidor del vehículo.</td>
</tr>
<tr>
<td><code>matricula</code></td>
<td>string</td>
<td>Número de matrícula del vehículo.</td>
</tr>
<tr>
<td><code>color</code></td>
<td>string</td>
<td>Color del vehículo.</td>
</tr>
<tr>
<td><code>kilometraje</code></td>
<td>int32</td>
<td>Kilometraje actual del vehículo.</td>
</tr>
<tr>
<td><code>anyoVehiculo</code></td>
<td>int32</td>
<td>Año de fabricación del vehículo.</td>
</tr>
<tr>
<td><code>codigoMotor</code></td>
<td>string</td>
<td>Código del motor del vehículo.</td>
</tr>
<tr>
<td><code>codigoCambio</code></td>
<td>string</td>
<td>Código de cambio del vehículo.</td>
</tr>
<tr>
<td><code>observaciones</code></td>
<td>string</td>
<td>Observaciones adicionales sobre el vehículo.</td>
</tr>
<tr>
<td><code>urlsImgs</code></td>
<td>array(strings)</td>
<td>Lista de URLs de imágenes representativas del vehículo.</td>
</tr>
<tr>
<td><code>codMarca</code></td>
<td>string</td>
<td>Código de marca del vehículo.</td>
</tr>
<tr>
<td><code>nombreMarca</code></td>
<td>string</td>
<td>Nombre de la marca del vehículo.</td>
</tr>
<tr>
<td><code>codModelo</code></td>
<td>string</td>
<td>Código del modelo del vehículo.</td>
</tr>
<tr>
<td><code>nombreModelo</code></td>
<td>string</td>
<td>Nombre del modelo del vehículo.</td>
</tr>
<tr>
<td><code>codVersion</code></td>
<td>string</td>
<td>Código de versión del vehículo.</td>
</tr>
<tr>
<td><code>nombreVersion</code></td>
<td>string</td>
<td>Nombre de la versión del vehículo.</td>
</tr>
<tr>
<td><code>tipoVersion</code></td>
<td>string</td>
<td>Tipo de versión del vehículo.</td>
</tr>
<tr>
<td><code>combustible</code></td>
<td>string</td>
<td>Tipo de combustible del vehículo.</td>
</tr>
<tr>
<td><code>puertas</code></td>
<td>int32</td>
<td>Número de puertas del vehículo.</td>
</tr>
<tr>
<td><code>anyoInicio</code></td>
<td>int32</td>
<td>Año de inicio de producción del vehículo.</td>
</tr>
<tr>
<td><code>anyoFin</code></td>
<td>int32</td>
<td>Año de fin de producción del vehículo.</td>
</tr>
<tr>
<td><code>tiposMotor</code></td>
<td>array(string)</td>
<td>Lista de tipos de motor del vehículo.</td>
</tr>
<tr>
<td><code>potenciaHP</code></td>
<td>int32</td>
<td>Potencia del motor en caballos de fuerza.</td>
</tr>
<tr>
<td><code>potenciaKw</code></td>
<td>int32</td>
<td>Potencia del motor en kilovatios.</td>
</tr>
<tr>
<td><code>cilindrada</code></td>
<td>int32</td>
<td>Cilindrada del motor.</td>
</tr>
<tr>
<td><code>transmision</code></td>
<td>string</td>
<td>Tipo de transmisión del vehículo.</td>
</tr>
<tr>
<td><code>alimentacion</code></td>
<td>string</td>
<td>Tipo de alimentación del vehículo.</td>
</tr>
<tr>
<td><code>numMarchas</code></td>
<td>int32</td>
<td>Número de marchas de la transmisión del vehículo.</td>
</tr>
<tr>
<td><code>rvCode</code></td>
<td>string</td>
<td>Código de RV del vehículo.</td>
</tr>
<tr>
<td><code>ktype</code></td>
<td>string</td>
<td>Código único de compatibilidad con ebay</td>
</tr>
</tbody>
</table>
<h3 id="recuperarcambiosvehiculoscanalempresa"><strong>RecuperarCambiosVehiculosCanalEmpresa</strong><a class="headerlink" href="#recuperarcambiosvehiculoscanalempresa" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>RecuperarCambiosVehiculosCanalEmpresa</mark>} permite recuperar información específica de vehículos de una empresa.</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Almacen/RecuperarCambiosVehiculosCanalEmpresa</p>
</div>
<div class="annotate">
<blockquote>
<p>Respuesta: --&gt; (1) &lt;--</p>
</blockquote>
</div>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">response:</span><pre><span></span><code><a id="__codelineno-37-1" name="__codelineno-37-1" href="#__codelineno-37-1"></a><span class="p">{</span>
<a id="__codelineno-37-2" name="__codelineno-37-2" href="#__codelineno-37-2"></a><span class="w">    </span><span class="nt">&quot;vehiculos&quot;</span><span class="p">:[</span>
<a id="__codelineno-37-3" name="__codelineno-37-3" href="#__codelineno-37-3"></a><span class="w">        </span><span class="nt">&quot;idLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">49595</span><span class="p">,</span>
<a id="__codelineno-37-4" name="__codelineno-37-4" href="#__codelineno-37-4"></a><span class="w">        </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-37-5" name="__codelineno-37-5" href="#__codelineno-37-5"></a><span class="w">        </span><span class="nt">&quot;fechaMod&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2024-01-30T15:42:34&quot;</span><span class="p">,</span>
<a id="__codelineno-37-6" name="__codelineno-37-6" href="#__codelineno-37-6"></a><span class="w">    </span><span class="err">...</span>
<a id="__codelineno-37-7" name="__codelineno-37-7" href="#__codelineno-37-7"></a><span class="w">    </span><span class="p">],</span>
<a id="__codelineno-37-8" name="__codelineno-37-8" href="#__codelineno-37-8"></a><span class="w">    </span><span class="nt">&quot;result_set&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-37-9" name="__codelineno-37-9" href="#__codelineno-37-9"></a><span class="w">            </span><span class="nt">&quot;total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">10695</span><span class="p">,</span>
<a id="__codelineno-37-10" name="__codelineno-37-10" href="#__codelineno-37-10"></a><span class="w">            </span><span class="nt">&quot;count&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">500</span><span class="p">,</span>
<a id="__codelineno-37-11" name="__codelineno-37-11" href="#__codelineno-37-11"></a><span class="w">            </span><span class="nt">&quot;offset&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">500</span><span class="p">,</span>
<a id="__codelineno-37-12" name="__codelineno-37-12" href="#__codelineno-37-12"></a><span class="w">            </span><span class="nt">&quot;lastId&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1945959</span>
<a id="__codelineno-37-13" name="__codelineno-37-13" href="#__codelineno-37-13"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-37-14" name="__codelineno-37-14" href="#__codelineno-37-14"></a><span class="p">}</span>
</code></pre></div></li>
</ol>
<p><strong>Parámetros de RecuperarCambiosVehiculosCanalEmpresa:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>Ejemplo</th>
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
<td><code>fecha</code></td>
<td>Header</td>
<td>(20/12/2023 21:29:56)</td>
<td>Required</td>
<td>string</td>
<td>Fecha a partir de la cual deseamos obtener vehiculos</td>
</tr>
<tr>
<td><code>lastid</code></td>
<td>Header</td>
<td>(0)</td>
<td>Required</td>
<td>int32</td>
<td>Utilizar el LastId devuelto en el Result_Set de la Paginación para obtener la siguiente tanda de piezas y sus vehículos</td>
</tr>
<tr>
<td><code>offset</code></td>
<td>Header</td>
<td>(0)</td>
<td>Required</td>
<td>int32</td>
<td>Cantidad de piezas que deseamos recuperar con un límite máximo de 1000</td>
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
<h4 id="code-exe_2">Code exe<a class="headerlink" href="#code-exe_2" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="4:5"><input checked="checked" id="__tabbed_4_1" name="__tabbed_4" type="radio" /><input id="__tabbed_4_2" name="__tabbed_4" type="radio" /><input id="__tabbed_4_3" name="__tabbed_4" type="radio" /><input id="__tabbed_4_4" name="__tabbed_4" type="radio" /><input id="__tabbed_4_5" name="__tabbed_4" type="radio" /><div class="tabbed-labels"><label for="__tabbed_4_1">C#</label><label for="__tabbed_4_2">java</label><label for="__tabbed_4_3">python</label><label for="__tabbed_4_4">javascript</label><label for="__tabbed_4_5">Ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-38-1" name="__codelineno-38-1" href="#__codelineno-38-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-38-2" name="__codelineno-38-2" href="#__codelineno-38-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-38-3" name="__codelineno-38-3" href="#__codelineno-38-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/RecuperarCambiosVehiculosCanalEmpresa&quot;</span><span class="p">);</span>
<a id="__codelineno-38-4" name="__codelineno-38-4" href="#__codelineno-38-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-38-5" name="__codelineno-38-5" href="#__codelineno-38-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-38-6" name="__codelineno-38-6" href="#__codelineno-38-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;lastid&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">lastid</span><span class="p">);</span>
<a id="__codelineno-38-7" name="__codelineno-38-7" href="#__codelineno-38-7"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;offset&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">offset</span><span class="p">);</span>
<a id="__codelineno-38-8" name="__codelineno-38-8" href="#__codelineno-38-8"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">);</span>
<a id="__codelineno-38-9" name="__codelineno-38-9" href="#__codelineno-38-9"></a>
<a id="__codelineno-38-10" name="__codelineno-38-10" href="#__codelineno-38-10"></a>
<a id="__codelineno-38-11" name="__codelineno-38-11" href="#__codelineno-38-11"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-38-12" name="__codelineno-38-12" href="#__codelineno-38-12"></a>
<a id="__codelineno-38-13" name="__codelineno-38-13" href="#__codelineno-38-13"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-39-1" name="__codelineno-39-1" href="#__codelineno-39-1"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.CloseableHttpResponse</span><span class="p">;</span>
<a id="__codelineno-39-2" name="__codelineno-39-2" href="#__codelineno-39-2"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.HttpPost</span><span class="p">;</span>
<a id="__codelineno-39-3" name="__codelineno-39-3" href="#__codelineno-39-3"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.entity.StringEntity</span><span class="p">;</span>
<a id="__codelineno-39-4" name="__codelineno-39-4" href="#__codelineno-39-4"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.CloseableHttpClient</span><span class="p">;</span>
<a id="__codelineno-39-5" name="__codelineno-39-5" href="#__codelineno-39-5"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.HttpClients</span><span class="p">;</span>
<a id="__codelineno-39-6" name="__codelineno-39-6" href="#__codelineno-39-6"></a>
<a id="__codelineno-39-7" name="__codelineno-39-7" href="#__codelineno-39-7"></a><span class="kn">import</span><span class="w"> </span><span class="nn">java.io.IOException</span><span class="p">;</span>
<a id="__codelineno-39-8" name="__codelineno-39-8" href="#__codelineno-39-8"></a><span class="kd">public</span><span class="w"> </span><span class="kd">class</span> <span class="nc">Main</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-39-9" name="__codelineno-39-9" href="#__codelineno-39-9"></a><span class="w">    </span><span class="kd">public</span><span class="w"> </span><span class="kd">static</span><span class="w"> </span><span class="kt">void</span><span class="w"> </span><span class="nf">main</span><span class="p">(</span><span class="n">String</span><span class="o">[]</span><span class="w"> </span><span class="n">args</span><span class="p">)</span><span class="w"> </span><span class="kd">throws</span><span class="w"> </span><span class="n">IOException</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-39-10" name="__codelineno-39-10" href="#__codelineno-39-10"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-39-11" name="__codelineno-39-11" href="#__codelineno-39-11"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_date&quot;</span><span class="p">;</span>
<a id="__codelineno-39-12" name="__codelineno-39-12" href="#__codelineno-39-12"></a><span class="w">        </span><span class="n">Integer</span><span class="w"> </span><span class="n">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span><span class="p">;</span>
<a id="__codelineno-39-13" name="__codelineno-39-13" href="#__codelineno-39-13"></a><span class="w">        </span><span class="n">Integer</span><span class="w"> </span><span class="n">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span><span class="p">;</span>
<a id="__codelineno-39-14" name="__codelineno-39-14" href="#__codelineno-39-14"></a><span class="w">        </span><span class="n">Integer</span><span class="w"> </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span><span class="p">;</span>
<a id="__codelineno-39-15" name="__codelineno-39-15" href="#__codelineno-39-15"></a>
<a id="__codelineno-39-16" name="__codelineno-39-16" href="#__codelineno-39-16"></a><span class="w">        </span><span class="n">CloseableHttpClient</span><span class="w"> </span><span class="n">httpClient</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClients</span><span class="p">.</span><span class="na">createDefault</span><span class="p">();</span>
<a id="__codelineno-39-17" name="__codelineno-39-17" href="#__codelineno-39-17"></a><span class="w">        </span><span class="n">HttpPost</span><span class="w"> </span><span class="n">httpPost</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">HttpPost</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/RecuperarCambiosVehiculosCanalEmpresa&quot;</span><span class="p">);</span>
<a id="__codelineno-39-18" name="__codelineno-39-18" href="#__codelineno-39-18"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-39-19" name="__codelineno-39-19" href="#__codelineno-39-19"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">);</span>
<a id="__codelineno-39-20" name="__codelineno-39-20" href="#__codelineno-39-20"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;lastid&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">lastid</span><span class="p">);</span>
<a id="__codelineno-39-21" name="__codelineno-39-21" href="#__codelineno-39-21"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;offset&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">offset</span><span class="p">);</span>
<a id="__codelineno-39-22" name="__codelineno-39-22" href="#__codelineno-39-22"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">);</span>
<a id="__codelineno-39-23" name="__codelineno-39-23" href="#__codelineno-39-23"></a>
<a id="__codelineno-39-24" name="__codelineno-39-24" href="#__codelineno-39-24"></a><span class="w">        </span><span class="n">CloseableHttpResponse</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">httpClient</span><span class="p">.</span><span class="na">execute</span><span class="p">(</span><span class="n">httpPost</span><span class="p">);</span>
<a id="__codelineno-39-25" name="__codelineno-39-25" href="#__codelineno-39-25"></a>
<a id="__codelineno-39-26" name="__codelineno-39-26" href="#__codelineno-39-26"></a><span class="w">        </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">getEntity</span><span class="p">().</span><span class="na">getContent</span><span class="p">().</span><span class="na">toString</span><span class="p">());</span>
<a id="__codelineno-39-27" name="__codelineno-39-27" href="#__codelineno-39-27"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-39-28" name="__codelineno-39-28" href="#__codelineno-39-28"></a><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-40-1" name="__codelineno-40-1" href="#__codelineno-40-1"></a>    <span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-40-2" name="__codelineno-40-2" href="#__codelineno-40-2"></a>
<a id="__codelineno-40-3" name="__codelineno-40-3" href="#__codelineno-40-3"></a>    <span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
<a id="__codelineno-40-4" name="__codelineno-40-4" href="#__codelineno-40-4"></a>        <span class="n">api_key</span> <span class="o">=</span> <span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-40-5" name="__codelineno-40-5" href="#__codelineno-40-5"></a>        <span class="n">fecha</span> <span class="o">=</span> <span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-40-6" name="__codelineno-40-6" href="#__codelineno-40-6"></a>        <span class="n">lastid</span> <span class="o">=</span> <span class="mi">0</span>
<a id="__codelineno-40-7" name="__codelineno-40-7" href="#__codelineno-40-7"></a>        <span class="n">offset</span> <span class="o">=</span> <span class="mi">0</span>
<a id="__codelineno-40-8" name="__codelineno-40-8" href="#__codelineno-40-8"></a>        <span class="n">idempresa</span> <span class="o">=</span> <span class="mi">0</span>
<a id="__codelineno-40-9" name="__codelineno-40-9" href="#__codelineno-40-9"></a>
<a id="__codelineno-40-10" name="__codelineno-40-10" href="#__codelineno-40-10"></a>        <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-40-11" name="__codelineno-40-11" href="#__codelineno-40-11"></a>            <span class="s1">&#39;apiKey&#39;</span><span class="p">:</span> <span class="n">api_key</span><span class="p">,</span>
<a id="__codelineno-40-12" name="__codelineno-40-12" href="#__codelineno-40-12"></a>            <span class="s1">&#39;fecha&#39;</span><span class="p">:</span> <span class="n">fecha</span><span class="p">,</span>
<a id="__codelineno-40-13" name="__codelineno-40-13" href="#__codelineno-40-13"></a>            <span class="s1">&#39;lastid&#39;</span><span class="p">:</span> <span class="n">lastid</span><span class="p">,</span>
<a id="__codelineno-40-14" name="__codelineno-40-14" href="#__codelineno-40-14"></a>            <span class="s1">&#39;offset&#39;</span><span class="p">:</span> <span class="n">offset</span><span class="p">,</span>
<a id="__codelineno-40-15" name="__codelineno-40-15" href="#__codelineno-40-15"></a>            <span class="s1">&#39;idempresa&#39;</span><span class="p">:</span> <span class="n">idempresa</span>
<a id="__codelineno-40-16" name="__codelineno-40-16" href="#__codelineno-40-16"></a>        <span class="p">}</span>
<a id="__codelineno-40-17" name="__codelineno-40-17" href="#__codelineno-40-17"></a>
<a id="__codelineno-40-18" name="__codelineno-40-18" href="#__codelineno-40-18"></a>        <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/RecuperarCambiosVehiculosCanalEmpresa&#39;</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-40-19" name="__codelineno-40-19" href="#__codelineno-40-19"></a>
<a id="__codelineno-40-20" name="__codelineno-40-20" href="#__codelineno-40-20"></a>        <span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">)</span>
<a id="__codelineno-40-21" name="__codelineno-40-21" href="#__codelineno-40-21"></a>
<a id="__codelineno-40-22" name="__codelineno-40-22" href="#__codelineno-40-22"></a>    <span class="k">if</span> <span class="vm">__name__</span> <span class="o">==</span> <span class="s2">&quot;__main__&quot;</span><span class="p">:</span>
<a id="__codelineno-40-23" name="__codelineno-40-23" href="#__codelineno-40-23"></a>        <span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-41-1" name="__codelineno-41-1" href="#__codelineno-41-1"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-41-2" name="__codelineno-41-2" href="#__codelineno-41-2"></a>
<a id="__codelineno-41-3" name="__codelineno-41-3" href="#__codelineno-41-3"></a><span class="w">    </span><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">main</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-41-4" name="__codelineno-41-4" href="#__codelineno-41-4"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span><span class="p">;</span>
<a id="__codelineno-41-5" name="__codelineno-41-5" href="#__codelineno-41-5"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span><span class="p">;</span>
<a id="__codelineno-41-6" name="__codelineno-41-6" href="#__codelineno-41-6"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mf">0</span><span class="p">;</span>
<a id="__codelineno-41-7" name="__codelineno-41-7" href="#__codelineno-41-7"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mf">0</span><span class="p">;</span>
<a id="__codelineno-41-8" name="__codelineno-41-8" href="#__codelineno-41-8"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mf">0</span><span class="p">;</span>
<a id="__codelineno-41-9" name="__codelineno-41-9" href="#__codelineno-41-9"></a>
<a id="__codelineno-41-10" name="__codelineno-41-10" href="#__codelineno-41-10"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/RecuperarCambiosVehiculosCanalEmpresa&#39;</span><span class="p">,</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-41-11" name="__codelineno-41-11" href="#__codelineno-41-11"></a><span class="w">            </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-41-12" name="__codelineno-41-12" href="#__codelineno-41-12"></a><span class="w">            </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-41-13" name="__codelineno-41-13" href="#__codelineno-41-13"></a><span class="w">                </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-41-14" name="__codelineno-41-14" href="#__codelineno-41-14"></a><span class="w">                </span><span class="s1">&#39;fecha&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">fecha</span><span class="p">,</span>
<a id="__codelineno-41-15" name="__codelineno-41-15" href="#__codelineno-41-15"></a><span class="w">                </span><span class="s1">&#39;lastid&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">lastid</span><span class="p">,</span>
<a id="__codelineno-41-16" name="__codelineno-41-16" href="#__codelineno-41-16"></a><span class="w">                </span><span class="s1">&#39;offset&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">offset</span><span class="p">,</span>
<a id="__codelineno-41-17" name="__codelineno-41-17" href="#__codelineno-41-17"></a><span class="w">                </span><span class="s1">&#39;idempresa&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">idempresa</span>
<a id="__codelineno-41-18" name="__codelineno-41-18" href="#__codelineno-41-18"></a><span class="w">            </span><span class="p">}</span>
<a id="__codelineno-41-19" name="__codelineno-41-19" href="#__codelineno-41-19"></a><span class="w">        </span><span class="p">});</span>
<a id="__codelineno-41-20" name="__codelineno-41-20" href="#__codelineno-41-20"></a>
<a id="__codelineno-41-21" name="__codelineno-41-21" href="#__codelineno-41-21"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<a id="__codelineno-41-22" name="__codelineno-41-22" href="#__codelineno-41-22"></a><span class="w">        </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-41-23" name="__codelineno-41-23" href="#__codelineno-41-23"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-41-24" name="__codelineno-41-24" href="#__codelineno-41-24"></a>
<a id="__codelineno-41-25" name="__codelineno-41-25" href="#__codelineno-41-25"></a><span class="w">    </span><span class="nx">main</span><span class="p">();</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-42-1" name="__codelineno-42-1" href="#__codelineno-42-1"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-42-2" name="__codelineno-42-2" href="#__codelineno-42-2"></a><span class="w">    </span><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-42-3" name="__codelineno-42-3" href="#__codelineno-42-3"></a>
<a id="__codelineno-42-4" name="__codelineno-42-4" href="#__codelineno-42-4"></a><span class="w">    </span><span class="k">def</span><span class="w"> </span><span class="nf">main</span>
<a id="__codelineno-42-5" name="__codelineno-42-5" href="#__codelineno-42-5"></a><span class="w">        </span><span class="n">api_key</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-42-6" name="__codelineno-42-6" href="#__codelineno-42-6"></a><span class="w">        </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-42-7" name="__codelineno-42-7" href="#__codelineno-42-7"></a><span class="w">        </span><span class="n">lastid</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-42-8" name="__codelineno-42-8" href="#__codelineno-42-8"></a><span class="w">        </span><span class="n">offset</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-42-9" name="__codelineno-42-9" href="#__codelineno-42-9"></a><span class="w">        </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-42-10" name="__codelineno-42-10" href="#__codelineno-42-10"></a>
<a id="__codelineno-42-11" name="__codelineno-42-11" href="#__codelineno-42-11"></a><span class="w">        </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/RecuperarCambiosVehiculosCanalEmpresa&quot;</span><span class="p">)</span>
<a id="__codelineno-42-12" name="__codelineno-42-12" href="#__codelineno-42-12"></a>
<a id="__codelineno-42-13" name="__codelineno-42-13" href="#__codelineno-42-13"></a><span class="w">        </span><span class="n">https</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-42-14" name="__codelineno-42-14" href="#__codelineno-42-14"></a><span class="w">        </span><span class="n">https</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-42-15" name="__codelineno-42-15" href="#__codelineno-42-15"></a>
<a id="__codelineno-42-16" name="__codelineno-42-16" href="#__codelineno-42-16"></a><span class="w">        </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-42-17" name="__codelineno-42-17" href="#__codelineno-42-17"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">api_key</span>
<a id="__codelineno-42-18" name="__codelineno-42-18" href="#__codelineno-42-18"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;fecha&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">fecha</span>
<a id="__codelineno-42-19" name="__codelineno-42-19" href="#__codelineno-42-19"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;lastid&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">lastid</span>
<a id="__codelineno-42-20" name="__codelineno-42-20" href="#__codelineno-42-20"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;offset&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">offset</span>
<a id="__codelineno-42-21" name="__codelineno-42-21" href="#__codelineno-42-21"></a><span class="w">        </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;idempresa&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">idempresa</span>
<a id="__codelineno-42-22" name="__codelineno-42-22" href="#__codelineno-42-22"></a>
<a id="__codelineno-42-23" name="__codelineno-42-23" href="#__codelineno-42-23"></a><span class="w">        </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">https</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-42-24" name="__codelineno-42-24" href="#__codelineno-42-24"></a><span class="w">        </span><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">read_body</span>
<a id="__codelineno-42-25" name="__codelineno-42-25" href="#__codelineno-42-25"></a><span class="w">    </span><span class="k">end</span>
<a id="__codelineno-42-26" name="__codelineno-42-26" href="#__codelineno-42-26"></a>
<a id="__codelineno-42-27" name="__codelineno-42-27" href="#__codelineno-42-27"></a><span class="w">    </span><span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
</div>
</div>
<h4 id="vehiculo_3">Vehículo<a class="headerlink" href="#vehiculo_3" title="Permanent link">&para;</a></h4>
<div class="highlight"><span class="filename">vehiculo</span><pre><span></span><code><a id="__codelineno-43-1" name="__codelineno-43-1" href="#__codelineno-43-1"></a><span class="w">    </span><span class="p">{</span>
<a id="__codelineno-43-2" name="__codelineno-43-2" href="#__codelineno-43-2"></a><span class="w">      </span><span class="nt">&quot;idLocal&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">49595</span><span class="p">,</span>
<a id="__codelineno-43-3" name="__codelineno-43-3" href="#__codelineno-43-3"></a><span class="w">      </span><span class="nt">&quot;idEmpresa&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1460</span><span class="p">,</span>
<a id="__codelineno-43-4" name="__codelineno-43-4" href="#__codelineno-43-4"></a><span class="w">      </span><span class="nt">&quot;fechaMod&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2024-01-30T15:42:34&quot;</span><span class="p">,</span>
<a id="__codelineno-43-5" name="__codelineno-43-5" href="#__codelineno-43-5"></a><span class="w">      </span><span class="nt">&quot;codigo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;10424&quot;</span><span class="p">,</span>
<a id="__codelineno-43-6" name="__codelineno-43-6" href="#__codelineno-43-6"></a><span class="w">      </span><span class="nt">&quot;estado&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-43-7" name="__codelineno-43-7" href="#__codelineno-43-7"></a><span class="w">          </span><span class="mi">15</span><span class="p">,</span>
<a id="__codelineno-43-8" name="__codelineno-43-8" href="#__codelineno-43-8"></a><span class="w">          </span><span class="mi">5</span>
<a id="__codelineno-43-9" name="__codelineno-43-9" href="#__codelineno-43-9"></a><span class="w">      </span><span class="p">],</span>
<a id="__codelineno-43-10" name="__codelineno-43-10" href="#__codelineno-43-10"></a><span class="w">      </span><span class="nt">&quot;bastidor&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;WBAAL71070CF45890&quot;</span><span class="p">,</span>
<a id="__codelineno-43-11" name="__codelineno-43-11" href="#__codelineno-43-11"></a><span class="w">      </span><span class="nt">&quot;matricula&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2658-FFD&quot;</span><span class="p">,</span>
<a id="__codelineno-43-12" name="__codelineno-43-12" href="#__codelineno-43-12"></a><span class="w">      </span><span class="nt">&quot;color&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;NEGRO&quot;</span><span class="p">,</span>
<a id="__codelineno-43-13" name="__codelineno-43-13" href="#__codelineno-43-13"></a><span class="w">      </span><span class="nt">&quot;kilometraje&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">0</span><span class="p">,</span>
<a id="__codelineno-43-14" name="__codelineno-43-14" href="#__codelineno-43-14"></a><span class="w">      </span><span class="nt">&quot;anyoVehiculo&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2006</span><span class="p">,</span>
<a id="__codelineno-43-15" name="__codelineno-43-15" href="#__codelineno-43-15"></a><span class="w">      </span><span class="nt">&quot;codigoMotor&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;M47D20&quot;</span><span class="p">,</span>
<a id="__codelineno-43-16" name="__codelineno-43-16" href="#__codelineno-43-16"></a><span class="w">      </span><span class="nt">&quot;codigoCambio&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-43-17" name="__codelineno-43-17" href="#__codelineno-43-17"></a><span class="w">      </span><span class="nt">&quot;observaciones&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-43-18" name="__codelineno-43-18" href="#__codelineno-43-18"></a><span class="w">      </span><span class="nt">&quot;urlsImgs&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-43-19" name="__codelineno-43-19" href="#__codelineno-43-19"></a><span class="w">                </span><span class="s2">&quot;https://cdn11.metasync.com/9QcoK6IHNWwkXAisjXlSocco3IZ94WwjUyYihhJLRMNwnPYqi0JEzw==&quot;</span>
<a id="__codelineno-43-20" name="__codelineno-43-20" href="#__codelineno-43-20"></a><span class="w">            </span><span class="p">],</span>
<a id="__codelineno-43-21" name="__codelineno-43-21" href="#__codelineno-43-21"></a><span class="w">      </span><span class="nt">&quot;codMarca&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;01130&quot;</span><span class="p">,</span>
<a id="__codelineno-43-22" name="__codelineno-43-22" href="#__codelineno-43-22"></a><span class="w">      </span><span class="nt">&quot;nombreMarca&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;BMW&quot;</span><span class="p">,</span>
<a id="__codelineno-43-23" name="__codelineno-43-23" href="#__codelineno-43-23"></a><span class="w">      </span><span class="nt">&quot;codModelo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;01130046&quot;</span><span class="p">,</span>
<a id="__codelineno-43-24" name="__codelineno-43-24" href="#__codelineno-43-24"></a><span class="w">      </span><span class="nt">&quot;nombreModelo&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;SERIE 3 BERLINA (E46)&quot;</span><span class="p">,</span>
<a id="__codelineno-43-25" name="__codelineno-43-25" href="#__codelineno-43-25"></a><span class="w">      </span><span class="nt">&quot;codVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;011300460080001&quot;</span><span class="p">,</span>
<a id="__codelineno-43-26" name="__codelineno-43-26" href="#__codelineno-43-26"></a><span class="w">      </span><span class="nt">&quot;nombreVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;320d&quot;</span><span class="p">,</span>
<a id="__codelineno-43-27" name="__codelineno-43-27" href="#__codelineno-43-27"></a><span class="w">      </span><span class="nt">&quot;tipoVersion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;BerS&quot;</span><span class="p">,</span>
<a id="__codelineno-43-28" name="__codelineno-43-28" href="#__codelineno-43-28"></a><span class="w">      </span><span class="nt">&quot;combustible&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Diesel&quot;</span><span class="p">,</span>
<a id="__codelineno-43-29" name="__codelineno-43-29" href="#__codelineno-43-29"></a><span class="w">      </span><span class="nt">&quot;puertas&quot;</span><span class="p">:</span><span class="w"> </span><span class="kc">null</span><span class="p">,</span>
<a id="__codelineno-43-30" name="__codelineno-43-30" href="#__codelineno-43-30"></a><span class="w">      </span><span class="nt">&quot;anyoInicio&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1998</span><span class="p">,</span>
<a id="__codelineno-43-31" name="__codelineno-43-31" href="#__codelineno-43-31"></a><span class="w">      </span><span class="nt">&quot;anyoFin&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">2001</span><span class="p">,</span>
<a id="__codelineno-43-32" name="__codelineno-43-32" href="#__codelineno-43-32"></a><span class="w">      </span><span class="nt">&quot;tiposMotor&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">[</span>
<a id="__codelineno-43-33" name="__codelineno-43-33" href="#__codelineno-43-33"></a><span class="w">          </span><span class="s2">&quot;M47D20&quot;</span><span class="p">,</span>
<a id="__codelineno-43-34" name="__codelineno-43-34" href="#__codelineno-43-34"></a><span class="w">          </span><span class="s2">&quot;M47204D1&quot;</span>
<a id="__codelineno-43-35" name="__codelineno-43-35" href="#__codelineno-43-35"></a><span class="w">      </span><span class="p">],</span>
<a id="__codelineno-43-36" name="__codelineno-43-36" href="#__codelineno-43-36"></a><span class="w">      </span><span class="nt">&quot;potenciaHP&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">136</span><span class="p">,</span>
<a id="__codelineno-43-37" name="__codelineno-43-37" href="#__codelineno-43-37"></a><span class="w">      </span><span class="nt">&quot;potenciaKw&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">100</span><span class="p">,</span>
<a id="__codelineno-43-38" name="__codelineno-43-38" href="#__codelineno-43-38"></a><span class="w">      </span><span class="nt">&quot;cilindrada&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1951</span><span class="p">,</span>
<a id="__codelineno-43-39" name="__codelineno-43-39" href="#__codelineno-43-39"></a><span class="w">      </span><span class="nt">&quot;transmision&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Caja de cambios 5 velocidades&quot;</span><span class="p">,</span>
<a id="__codelineno-43-40" name="__codelineno-43-40" href="#__codelineno-43-40"></a><span class="w">      </span><span class="nt">&quot;alimentacion&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;&quot;</span><span class="p">,</span>
<a id="__codelineno-43-41" name="__codelineno-43-41" href="#__codelineno-43-41"></a><span class="w">      </span><span class="nt">&quot;numMarchas&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">5</span><span class="p">,</span>
<a id="__codelineno-43-42" name="__codelineno-43-42" href="#__codelineno-43-42"></a><span class="w">      </span><span class="nt">&quot;rvCode&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;34242&quot;</span><span class="p">,</span>
<a id="__codelineno-43-43" name="__codelineno-43-43" href="#__codelineno-43-43"></a><span class="w">      </span><span class="nt">&quot;ktype&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;15638&quot;</span>
<a id="__codelineno-43-44" name="__codelineno-43-44" href="#__codelineno-43-44"></a><span class="w">  </span><span class="p">},</span>
</code></pre></div>
<h5 id="explicacion-vehiculo_3">Explicación vehículo<a class="headerlink" href="#explicacion-vehiculo_3" title="Permanent link">&para;</a></h5>
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
<td><code>idLocal</code></td>
<td>int32</td>
<td>Identificador local del vehículo.</td>
</tr>
<tr>
<td><code>idEmpresa</code></td>
<td>int32</td>
<td>Identificador de la empresa propietaria del vehículo.</td>
</tr>
<tr>
<td><code>fechaMod</code></td>
<td>string</td>
<td>Fecha y hora de la última modificación de la información del vehículo (ejemplo: "2024-01-30T15:42:34").</td>
</tr>
<tr>
<td><code>codigo</code></td>
<td>string</td>
<td>Código único del vehículo.</td>
</tr>
<tr>
<td><code>estado</code></td>
<td>array(int32)</td>
<td>Lista de estados del vehículo.(EnTramite, Revisado, Despiezado, Calculado, EnCampa, Destruido, Procesando, Baja, EnVenta, Sideo, ErrorCalculo, Valorado, Descontaminado, Tasado, ErrorAugias, Otros)</td>
</tr>
<tr>
<td><code>bastidor</code></td>
<td>string</td>
<td>Número de bastidor del vehículo.</td>
</tr>
<tr>
<td><code>matricula</code></td>
<td>string</td>
<td>Número de matrícula del vehículo.</td>
</tr>
<tr>
<td><code>color</code></td>
<td>string</td>
<td>Color del vehículo.</td>
</tr>
<tr>
<td><code>kilometraje</code></td>
<td>int32</td>
<td>Kilometraje actual del vehículo.</td>
</tr>
<tr>
<td><code>anyoVehiculo</code></td>
<td>int32</td>
<td>Año de fabricación del vehículo.</td>
</tr>
<tr>
<td><code>codigoMotor</code></td>
<td>string</td>
<td>Código del motor del vehículo.</td>
</tr>
<tr>
<td><code>codigoCambio</code></td>
<td>string</td>
<td>Código de cambio del vehículo.</td>
</tr>
<tr>
<td><code>observaciones</code></td>
<td>string</td>
<td>Observaciones adicionales sobre el vehículo.</td>
</tr>
<tr>
<td><code>urlsImgs</code></td>
<td>array(strings)</td>
<td>Lista de URLs de imágenes representativas del vehículo.</td>
</tr>
<tr>
<td><code>codMarca</code></td>
<td>string</td>
<td>Código de marca del vehículo.</td>
</tr>
<tr>
<td><code>nombreMarca</code></td>
<td>string</td>
<td>Nombre de la marca del vehículo.</td>
</tr>
<tr>
<td><code>codModelo</code></td>
<td>string</td>
<td>Código del modelo del vehículo.</td>
</tr>
<tr>
<td><code>nombreModelo</code></td>
<td>string</td>
<td>Nombre del modelo del vehículo.</td>
</tr>
<tr>
<td><code>codVersion</code></td>
<td>string</td>
<td>Código de versión del vehículo.</td>
</tr>
<tr>
<td><code>nombreVersion</code></td>
<td>string</td>
<td>Nombre de la versión del vehículo.</td>
</tr>
<tr>
<td><code>tipoVersion</code></td>
<td>string</td>
<td>Tipo de versión del vehículo.</td>
</tr>
<tr>
<td><code>combustible</code></td>
<td>string</td>
<td>Tipo de combustible del vehículo.</td>
</tr>
<tr>
<td><code>puertas</code></td>
<td>int32</td>
<td>Número de puertas del vehículo.</td>
</tr>
<tr>
<td><code>anyoInicio</code></td>
<td>int32</td>
<td>Año de inicio de producción del vehículo.</td>
</tr>
<tr>
<td><code>anyoFin</code></td>
<td>int32</td>
<td>Año de fin de producción del vehículo.</td>
</tr>
<tr>
<td><code>tiposMotor</code></td>
<td>array(string)</td>
<td>Lista de tipos de motor del vehículo.</td>
</tr>
<tr>
<td><code>potenciaHP</code></td>
<td>int32</td>
<td>Potencia del motor en caballos de fuerza.</td>
</tr>
<tr>
<td><code>potenciaKw</code></td>
<td>int32</td>
<td>Potencia del motor en kilovatios.</td>
</tr>
<tr>
<td><code>cilindrada</code></td>
<td>int32</td>
<td>Cilindrada del motor.</td>
</tr>
<tr>
<td><code>transmision</code></td>
<td>string</td>
<td>Tipo de transmisión del vehículo.</td>
</tr>
<tr>
<td><code>alimentacion</code></td>
<td>string</td>
<td>Tipo de alimentación del vehículo.</td>
</tr>
<tr>
<td><code>numMarchas</code></td>
<td>int32</td>
<td>Número de marchas de la transmisión del vehículo.</td>
</tr>
<tr>
<td><code>rvCode</code></td>
<td>string</td>
<td>Código de RV del vehículo.</td>
</tr>
<tr>
<td><code>ktype</code></td>
<td>string</td>
<td>Código único de compatibilidad con ebay</td>
</tr>
</tbody>
</table>
<h4 id="result_set_2">Result_set<a class="headerlink" href="#result_set_2" title="Permanent link">&para;</a></h4>
<div class="highlight"><span class="filename">result_set</span><pre><span></span><code><a id="__codelineno-44-1" name="__codelineno-44-1" href="#__codelineno-44-1"></a><span class="w">    </span><span class="nt">&quot;result_set&quot;</span><span class="p">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-44-2" name="__codelineno-44-2" href="#__codelineno-44-2"></a><span class="w">        </span><span class="nt">&quot;total&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">10696</span><span class="p">,</span>
<a id="__codelineno-44-3" name="__codelineno-44-3" href="#__codelineno-44-3"></a><span class="w">        </span><span class="nt">&quot;count&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1000</span><span class="p">,</span>
<a id="__codelineno-44-4" name="__codelineno-44-4" href="#__codelineno-44-4"></a><span class="w">        </span><span class="nt">&quot;offset&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1000</span><span class="p">,</span>
<a id="__codelineno-44-5" name="__codelineno-44-5" href="#__codelineno-44-5"></a><span class="w">        </span><span class="nt">&quot;lastId&quot;</span><span class="p">:</span><span class="w"> </span><span class="mi">1946873</span>
<a id="__codelineno-44-6" name="__codelineno-44-6" href="#__codelineno-44-6"></a><span class="w">    </span><span class="p">}</span>
</code></pre></div>
<p><strong>Datos result_set</strong>:</p>
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
<td><code>lastid</code></td>
<td>int32</td>
<td>Última id de pieza que recibimos para pasar a la siguiente iteración</td>
</tr>
<tr>
<td><code>offset</code></td>
<td>int32</td>
<td>Cantidad de datos que deseamos recuperar max 1000</td>
</tr>
<tr>
<td><code>total</code></td>
<td>int32</td>
<td>Cantidad total de vehiculos</td>
</tr>
<tr>
<td><code>count</code></td>
<td>int32</td>
<td>Cantidad de datos encontrados en esa iteración max 1000</td>
</tr>
</tbody>
</table>
<div class="highlight"><pre><span></span><code>Si el count fuese 0 y estuviesemos iterando habremos llegado al final del inventario.

Si el count fuese &lt; que offset también indicaria que estamos en la última tanda del inventario.
</code></pre></div>
<h3 id="conteopiezas"><strong>ConteoPiezas</strong><a class="headerlink" href="#conteopiezas" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>ConteoPiezas</mark>} devuelve la cantidad específica de piezas a partir de una fecha</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Almacen/ConteoPiezas</p>
</div>
<div class="annotate">
<blockquote>
<p>Respuesta: --&gt; (1) &lt;--</p>
</blockquote>
</div>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">response:</span><pre><span></span><code><a id="__codelineno-45-1" name="__codelineno-45-1" href="#__codelineno-45-1"></a><span class="w">    </span><span class="mi">20</span>
</code></pre></div></li>
</ol>
<p><strong>Parámetros de ConteoPiezas:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>Ejemplo</th>
<th></th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>apikey</code></td>
<td>Header</td>
<td>(MS-5iq5RTxT6EW1BBqTHmGldK6ZwhQ7C7v9S)</td>
<td>Required</td>
<td>string</td>
<td>Apikey Canal.</td>
</tr>
<tr>
<td><code>fecha</code></td>
<td>Header</td>
<td>(20/12/2023 21:29:56)</td>
<td>Required</td>
<td>string</td>
<td>Fecha a partir de la cual deseamos obtener vehiculos</td>
</tr>
</tbody>
</table>
<h4 id="code-exe_3">Code exe<a class="headerlink" href="#code-exe_3" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="5:5"><input checked="checked" id="__tabbed_5_1" name="__tabbed_5" type="radio" /><input id="__tabbed_5_2" name="__tabbed_5" type="radio" /><input id="__tabbed_5_3" name="__tabbed_5" type="radio" /><input id="__tabbed_5_4" name="__tabbed_5" type="radio" /><input id="__tabbed_5_5" name="__tabbed_5" type="radio" /><div class="tabbed-labels"><label for="__tabbed_5_1">C#</label><label for="__tabbed_5_2">java</label><label for="__tabbed_5_3">python</label><label for="__tabbed_5_4">javascript</label><label for="__tabbed_5_5">Ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-46-1" name="__codelineno-46-1" href="#__codelineno-46-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-46-2" name="__codelineno-46-2" href="#__codelineno-46-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-46-3" name="__codelineno-46-3" href="#__codelineno-46-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/ConteoPiezas&quot;</span><span class="p">);</span>
<a id="__codelineno-46-4" name="__codelineno-46-4" href="#__codelineno-46-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-46-5" name="__codelineno-46-5" href="#__codelineno-46-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-46-6" name="__codelineno-46-6" href="#__codelineno-46-6"></a>
<a id="__codelineno-46-7" name="__codelineno-46-7" href="#__codelineno-46-7"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-46-8" name="__codelineno-46-8" href="#__codelineno-46-8"></a>
<a id="__codelineno-46-9" name="__codelineno-46-9" href="#__codelineno-46-9"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-47-1" name="__codelineno-47-1" href="#__codelineno-47-1"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.CloseableHttpResponse</span><span class="p">;</span>
<a id="__codelineno-47-2" name="__codelineno-47-2" href="#__codelineno-47-2"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.HttpPost</span><span class="p">;</span>
<a id="__codelineno-47-3" name="__codelineno-47-3" href="#__codelineno-47-3"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.entity.StringEntity</span><span class="p">;</span>
<a id="__codelineno-47-4" name="__codelineno-47-4" href="#__codelineno-47-4"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.CloseableHttpClient</span><span class="p">;</span>
<a id="__codelineno-47-5" name="__codelineno-47-5" href="#__codelineno-47-5"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.HttpClients</span><span class="p">;</span>
<a id="__codelineno-47-6" name="__codelineno-47-6" href="#__codelineno-47-6"></a>
<a id="__codelineno-47-7" name="__codelineno-47-7" href="#__codelineno-47-7"></a><span class="kn">import</span><span class="w"> </span><span class="nn">java.io.IOException</span><span class="p">;</span>
<a id="__codelineno-47-8" name="__codelineno-47-8" href="#__codelineno-47-8"></a>
<a id="__codelineno-47-9" name="__codelineno-47-9" href="#__codelineno-47-9"></a><span class="kd">public</span><span class="w"> </span><span class="kd">class</span> <span class="nc">Main</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-47-10" name="__codelineno-47-10" href="#__codelineno-47-10"></a><span class="w">    </span><span class="kd">public</span><span class="w"> </span><span class="kd">static</span><span class="w"> </span><span class="kt">void</span><span class="w"> </span><span class="nf">main</span><span class="p">(</span><span class="n">String</span><span class="o">[]</span><span class="w"> </span><span class="n">args</span><span class="p">)</span><span class="w"> </span><span class="kd">throws</span><span class="w"> </span><span class="n">IOException</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-47-11" name="__codelineno-47-11" href="#__codelineno-47-11"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-47-12" name="__codelineno-47-12" href="#__codelineno-47-12"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_date&quot;</span><span class="p">;</span>
<a id="__codelineno-47-13" name="__codelineno-47-13" href="#__codelineno-47-13"></a>
<a id="__codelineno-47-14" name="__codelineno-47-14" href="#__codelineno-47-14"></a><span class="w">        </span><span class="n">CloseableHttpClient</span><span class="w"> </span><span class="n">httpClient</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClients</span><span class="p">.</span><span class="na">createDefault</span><span class="p">();</span>
<a id="__codelineno-47-15" name="__codelineno-47-15" href="#__codelineno-47-15"></a><span class="w">        </span><span class="n">HttpPost</span><span class="w"> </span><span class="n">httpPost</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">HttpPost</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/ConteoPiezas&quot;</span><span class="p">);</span>
<a id="__codelineno-47-16" name="__codelineno-47-16" href="#__codelineno-47-16"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-47-17" name="__codelineno-47-17" href="#__codelineno-47-17"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">);</span>
<a id="__codelineno-47-18" name="__codelineno-47-18" href="#__codelineno-47-18"></a>
<a id="__codelineno-47-19" name="__codelineno-47-19" href="#__codelineno-47-19"></a><span class="w">        </span><span class="n">CloseableHttpResponse</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">httpClient</span><span class="p">.</span><span class="na">execute</span><span class="p">(</span><span class="n">httpPost</span><span class="p">);</span>
<a id="__codelineno-47-20" name="__codelineno-47-20" href="#__codelineno-47-20"></a>
<a id="__codelineno-47-21" name="__codelineno-47-21" href="#__codelineno-47-21"></a><span class="w">        </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">getEntity</span><span class="p">().</span><span class="na">getContent</span><span class="p">().</span><span class="na">toString</span><span class="p">());</span>
<a id="__codelineno-47-22" name="__codelineno-47-22" href="#__codelineno-47-22"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-47-23" name="__codelineno-47-23" href="#__codelineno-47-23"></a><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-48-1" name="__codelineno-48-1" href="#__codelineno-48-1"></a>    <span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-48-2" name="__codelineno-48-2" href="#__codelineno-48-2"></a>
<a id="__codelineno-48-3" name="__codelineno-48-3" href="#__codelineno-48-3"></a>    <span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
<a id="__codelineno-48-4" name="__codelineno-48-4" href="#__codelineno-48-4"></a>        <span class="n">api_key</span> <span class="o">=</span> <span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-48-5" name="__codelineno-48-5" href="#__codelineno-48-5"></a>        <span class="n">fecha</span> <span class="o">=</span> <span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-48-6" name="__codelineno-48-6" href="#__codelineno-48-6"></a>
<a id="__codelineno-48-7" name="__codelineno-48-7" href="#__codelineno-48-7"></a>        <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-48-8" name="__codelineno-48-8" href="#__codelineno-48-8"></a>            <span class="s1">&#39;apiKey&#39;</span><span class="p">:</span> <span class="n">api_key</span><span class="p">,</span>
<a id="__codelineno-48-9" name="__codelineno-48-9" href="#__codelineno-48-9"></a>            <span class="s1">&#39;fecha&#39;</span><span class="p">:</span> <span class="n">fecha</span>
<a id="__codelineno-48-10" name="__codelineno-48-10" href="#__codelineno-48-10"></a>        <span class="p">}</span>
<a id="__codelineno-48-11" name="__codelineno-48-11" href="#__codelineno-48-11"></a>
<a id="__codelineno-48-12" name="__codelineno-48-12" href="#__codelineno-48-12"></a>        <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/ConteoPiezas&#39;</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-48-13" name="__codelineno-48-13" href="#__codelineno-48-13"></a>
<a id="__codelineno-48-14" name="__codelineno-48-14" href="#__codelineno-48-14"></a>        <span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">)</span>
<a id="__codelineno-48-15" name="__codelineno-48-15" href="#__codelineno-48-15"></a>
<a id="__codelineno-48-16" name="__codelineno-48-16" href="#__codelineno-48-16"></a>    <span class="k">if</span> <span class="vm">__name__</span> <span class="o">==</span> <span class="s2">&quot;__main__&quot;</span><span class="p">:</span>
<a id="__codelineno-48-17" name="__codelineno-48-17" href="#__codelineno-48-17"></a>        <span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-49-1" name="__codelineno-49-1" href="#__codelineno-49-1"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-49-2" name="__codelineno-49-2" href="#__codelineno-49-2"></a>
<a id="__codelineno-49-3" name="__codelineno-49-3" href="#__codelineno-49-3"></a><span class="w">    </span><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">main</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-49-4" name="__codelineno-49-4" href="#__codelineno-49-4"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span><span class="p">;</span>
<a id="__codelineno-49-5" name="__codelineno-49-5" href="#__codelineno-49-5"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span><span class="p">;</span>
<a id="__codelineno-49-6" name="__codelineno-49-6" href="#__codelineno-49-6"></a>
<a id="__codelineno-49-7" name="__codelineno-49-7" href="#__codelineno-49-7"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/ConteoPiezas&#39;</span><span class="p">,</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-49-8" name="__codelineno-49-8" href="#__codelineno-49-8"></a><span class="w">            </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-49-9" name="__codelineno-49-9" href="#__codelineno-49-9"></a><span class="w">            </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-49-10" name="__codelineno-49-10" href="#__codelineno-49-10"></a><span class="w">                </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-49-11" name="__codelineno-49-11" href="#__codelineno-49-11"></a><span class="w">                </span><span class="s1">&#39;fecha&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">fecha</span>
<a id="__codelineno-49-12" name="__codelineno-49-12" href="#__codelineno-49-12"></a><span class="w">            </span><span class="p">}</span>
<a id="__codelineno-49-13" name="__codelineno-49-13" href="#__codelineno-49-13"></a><span class="w">        </span><span class="p">});</span>
<a id="__codelineno-49-14" name="__codelineno-49-14" href="#__codelineno-49-14"></a>
<a id="__codelineno-49-15" name="__codelineno-49-15" href="#__codelineno-49-15"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<a id="__codelineno-49-16" name="__codelineno-49-16" href="#__codelineno-49-16"></a><span class="w">        </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-49-17" name="__codelineno-49-17" href="#__codelineno-49-17"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-49-18" name="__codelineno-49-18" href="#__codelineno-49-18"></a>
<a id="__codelineno-49-19" name="__codelineno-49-19" href="#__codelineno-49-19"></a><span class="w">    </span><span class="nx">main</span><span class="p">();</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-50-1" name="__codelineno-50-1" href="#__codelineno-50-1"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-50-2" name="__codelineno-50-2" href="#__codelineno-50-2"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-50-3" name="__codelineno-50-3" href="#__codelineno-50-3"></a>
<a id="__codelineno-50-4" name="__codelineno-50-4" href="#__codelineno-50-4"></a><span class="k">def</span><span class="w"> </span><span class="nf">main</span>
<a id="__codelineno-50-5" name="__codelineno-50-5" href="#__codelineno-50-5"></a><span class="w">    </span><span class="n">api_key</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-50-6" name="__codelineno-50-6" href="#__codelineno-50-6"></a><span class="w">    </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-50-7" name="__codelineno-50-7" href="#__codelineno-50-7"></a>
<a id="__codelineno-50-8" name="__codelineno-50-8" href="#__codelineno-50-8"></a><span class="w">    </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/ConteoPiezas&quot;</span><span class="p">)</span>
<a id="__codelineno-50-9" name="__codelineno-50-9" href="#__codelineno-50-9"></a>
<a id="__codelineno-50-10" name="__codelineno-50-10" href="#__codelineno-50-10"></a><span class="w">    </span><span class="n">https</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-50-11" name="__codelineno-50-11" href="#__codelineno-50-11"></a><span class="w">    </span><span class="n">https</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-50-12" name="__codelineno-50-12" href="#__codelineno-50-12"></a>
<a id="__codelineno-50-13" name="__codelineno-50-13" href="#__codelineno-50-13"></a><span class="w">    </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-50-14" name="__codelineno-50-14" href="#__codelineno-50-14"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">api_key</span>
<a id="__codelineno-50-15" name="__codelineno-50-15" href="#__codelineno-50-15"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;fecha&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">fecha</span>
<a id="__codelineno-50-16" name="__codelineno-50-16" href="#__codelineno-50-16"></a>
<a id="__codelineno-50-17" name="__codelineno-50-17" href="#__codelineno-50-17"></a><span class="w">    </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">https</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-50-18" name="__codelineno-50-18" href="#__codelineno-50-18"></a><span class="w">    </span><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">read_body</span>
<a id="__codelineno-50-19" name="__codelineno-50-19" href="#__codelineno-50-19"></a><span class="k">end</span>
<a id="__codelineno-50-20" name="__codelineno-50-20" href="#__codelineno-50-20"></a>
<a id="__codelineno-50-21" name="__codelineno-50-21" href="#__codelineno-50-21"></a><span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
</div>
</div>
<h3 id="conteopiezasempresa"><strong>ConteoPiezasEmpresa</strong><a class="headerlink" href="#conteopiezasempresa" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
<p>El método {<mark>ConteoPiezasEmpresa</mark>} devuelve la cantidad específica de piezas a partir de una fecha sobre una empresa</p>
</div>
<div class="admonition info">
<p class="admonition-title">Info</p>
<p>Ruta: https://apis.metasync.com/Almacen/ConteoPiezasEmpresa</p>
</div>
<div class="annotate">
<blockquote>
<p>Respuesta: --&gt; (1) &lt;--</p>
</blockquote>
</div>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><span class="filename">response:</span><pre><span></span><code><a id="__codelineno-51-1" name="__codelineno-51-1" href="#__codelineno-51-1"></a><span class="w">    </span><span class="mi">20</span>
</code></pre></div></li>
</ol>
<p><strong>Parámetros de ConteoPiezasEmpresa:</strong></p>
<table>
<thead>
<tr>
<th>Nombre</th>
<th>Tipo Parametro</th>
<th>Ejemplo</th>
<th></th>
<th>Tipo</th>
<th>Descripción</th>
</tr>
</thead>
<tbody>
<tr>
<td><code>apikey</code></td>
<td>Header</td>
<td>(MS-5iq5RTxT6EW1BBqTHmGldK6ZwhQ7C7v9S)</td>
<td>Required</td>
<td>string</td>
<td>Apikey Canal.</td>
</tr>
<tr>
<td><code>fecha</code></td>
<td>Header</td>
<td>(20/12/2023 21:29:56)</td>
<td>Required</td>
<td>string</td>
<td>Fecha a partir de la cual deseamos obtener vehiculos</td>
</tr>
<tr>
<td><code>idempresa</code></td>
<td>Header</td>
<td>(1475)</td>
<td>Required</td>
<td>int32</td>
<td>Id local de la empresa</td>
</tr>
</tbody>
</table>
<h4 id="code-exe_4">Code exe<a class="headerlink" href="#code-exe_4" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="6:5"><input checked="checked" id="__tabbed_6_1" name="__tabbed_6" type="radio" /><input id="__tabbed_6_2" name="__tabbed_6" type="radio" /><input id="__tabbed_6_3" name="__tabbed_6" type="radio" /><input id="__tabbed_6_4" name="__tabbed_6" type="radio" /><input id="__tabbed_6_5" name="__tabbed_6" type="radio" /><div class="tabbed-labels"><label for="__tabbed_6_1">C#</label><label for="__tabbed_6_2">java</label><label for="__tabbed_6_3">python</label><label for="__tabbed_6_4">javascript</label><label for="__tabbed_6_5">Ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-52-1" name="__codelineno-52-1" href="#__codelineno-52-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-52-2" name="__codelineno-52-2" href="#__codelineno-52-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-52-3" name="__codelineno-52-3" href="#__codelineno-52-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/ConteoPiezasEmpresa&quot;</span><span class="p">);</span>
<a id="__codelineno-52-4" name="__codelineno-52-4" href="#__codelineno-52-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-52-5" name="__codelineno-52-5" href="#__codelineno-52-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-52-6" name="__codelineno-52-6" href="#__codelineno-52-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">);</span>
<a id="__codelineno-52-7" name="__codelineno-52-7" href="#__codelineno-52-7"></a>
<a id="__codelineno-52-8" name="__codelineno-52-8" href="#__codelineno-52-8"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-52-9" name="__codelineno-52-9" href="#__codelineno-52-9"></a>
<a id="__codelineno-52-10" name="__codelineno-52-10" href="#__codelineno-52-10"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-53-1" name="__codelineno-53-1" href="#__codelineno-53-1"></a><span class="w">    </span><span class="n">String</span><span class="w"> </span><span class="n">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-53-2" name="__codelineno-53-2" href="#__codelineno-53-2"></a><span class="w">    </span><span class="n">String</span><span class="w"> </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_date&quot;</span><span class="p">;</span>
<a id="__codelineno-53-3" name="__codelineno-53-3" href="#__codelineno-53-3"></a><span class="w">    </span><span class="n">Integer</span><span class="w"> </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span><span class="p">;</span>
<a id="__codelineno-53-4" name="__codelineno-53-4" href="#__codelineno-53-4"></a>
<a id="__codelineno-53-5" name="__codelineno-53-5" href="#__codelineno-53-5"></a><span class="w">    </span><span class="n">CloseableHttpClient</span><span class="w"> </span><span class="n">httpClient</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClients</span><span class="p">.</span><span class="na">createDefault</span><span class="p">();</span>
<a id="__codelineno-53-6" name="__codelineno-53-6" href="#__codelineno-53-6"></a><span class="w">    </span><span class="n">HttpPost</span><span class="w"> </span><span class="n">httpPost</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">HttpPost</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/ConteoPiezasEmpresa&quot;</span><span class="p">);</span>
<a id="__codelineno-53-7" name="__codelineno-53-7" href="#__codelineno-53-7"></a><span class="w">    </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-53-8" name="__codelineno-53-8" href="#__codelineno-53-8"></a><span class="w">    </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">);</span>
<a id="__codelineno-53-9" name="__codelineno-53-9" href="#__codelineno-53-9"></a><span class="w">    </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">);</span>
<a id="__codelineno-53-10" name="__codelineno-53-10" href="#__codelineno-53-10"></a>
<a id="__codelineno-53-11" name="__codelineno-53-11" href="#__codelineno-53-11"></a><span class="w">    </span><span class="n">CloseableHttpResponse</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">httpClient</span><span class="p">.</span><span class="na">execute</span><span class="p">(</span><span class="n">httpPost</span><span class="p">);</span>
<a id="__codelineno-53-12" name="__codelineno-53-12" href="#__codelineno-53-12"></a>
<a id="__codelineno-53-13" name="__codelineno-53-13" href="#__codelineno-53-13"></a><span class="w">    </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">getEntity</span><span class="p">().</span><span class="na">getContent</span><span class="p">().</span><span class="na">toString</span><span class="p">());</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-54-1" name="__codelineno-54-1" href="#__codelineno-54-1"></a><span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-54-2" name="__codelineno-54-2" href="#__codelineno-54-2"></a><span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
<a id="__codelineno-54-3" name="__codelineno-54-3" href="#__codelineno-54-3"></a>    <span class="n">api_key</span> <span class="o">=</span> <span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-54-4" name="__codelineno-54-4" href="#__codelineno-54-4"></a>    <span class="n">fecha</span> <span class="o">=</span> <span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-54-5" name="__codelineno-54-5" href="#__codelineno-54-5"></a>    <span class="n">idempresa</span> <span class="o">=</span> <span class="mi">0</span>
<a id="__codelineno-54-6" name="__codelineno-54-6" href="#__codelineno-54-6"></a>
<a id="__codelineno-54-7" name="__codelineno-54-7" href="#__codelineno-54-7"></a>    <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-54-8" name="__codelineno-54-8" href="#__codelineno-54-8"></a>        <span class="s1">&#39;apiKey&#39;</span><span class="p">:</span> <span class="n">api_key</span><span class="p">,</span>
<a id="__codelineno-54-9" name="__codelineno-54-9" href="#__codelineno-54-9"></a>        <span class="s1">&#39;fecha&#39;</span><span class="p">:</span> <span class="n">fecha</span><span class="p">,</span>
<a id="__codelineno-54-10" name="__codelineno-54-10" href="#__codelineno-54-10"></a>        <span class="s1">&#39;idempresa&#39;</span><span class="p">:</span> <span class="n">idempresa</span>
<a id="__codelineno-54-11" name="__codelineno-54-11" href="#__codelineno-54-11"></a>    <span class="p">}</span>
<a id="__codelineno-54-12" name="__codelineno-54-12" href="#__codelineno-54-12"></a>
<a id="__codelineno-54-13" name="__codelineno-54-13" href="#__codelineno-54-13"></a>    <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/ConteoPiezasEmpresa&#39;</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-54-14" name="__codelineno-54-14" href="#__codelineno-54-14"></a>
<a id="__codelineno-54-15" name="__codelineno-54-15" href="#__codelineno-54-15"></a>    <span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">)</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-55-1" name="__codelineno-55-1" href="#__codelineno-55-1"></a><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-55-2" name="__codelineno-55-2" href="#__codelineno-55-2"></a>
<a id="__codelineno-55-3" name="__codelineno-55-3" href="#__codelineno-55-3"></a><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">main</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-55-4" name="__codelineno-55-4" href="#__codelineno-55-4"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span><span class="p">;</span>
<a id="__codelineno-55-5" name="__codelineno-55-5" href="#__codelineno-55-5"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span><span class="p">;</span>
<a id="__codelineno-55-6" name="__codelineno-55-6" href="#__codelineno-55-6"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mf">0</span><span class="p">;</span>
<a id="__codelineno-55-7" name="__codelineno-55-7" href="#__codelineno-55-7"></a>
<a id="__codelineno-55-8" name="__codelineno-55-8" href="#__codelineno-55-8"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/ConteoPiezasEmpresa&#39;</span><span class="p">,</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-55-9" name="__codelineno-55-9" href="#__codelineno-55-9"></a><span class="w">        </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-55-10" name="__codelineno-55-10" href="#__codelineno-55-10"></a><span class="w">        </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-55-11" name="__codelineno-55-11" href="#__codelineno-55-11"></a><span class="w">            </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-55-12" name="__codelineno-55-12" href="#__codelineno-55-12"></a><span class="w">            </span><span class="s1">&#39;fecha&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">fecha</span><span class="p">,</span>
<a id="__codelineno-55-13" name="__codelineno-55-13" href="#__codelineno-55-13"></a><span class="w">            </span><span class="s1">&#39;idempresa&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">idempresa</span>
<a id="__codelineno-55-14" name="__codelineno-55-14" href="#__codelineno-55-14"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-55-15" name="__codelineno-55-15" href="#__codelineno-55-15"></a><span class="w">    </span><span class="p">});</span>
<a id="__codelineno-55-16" name="__codelineno-55-16" href="#__codelineno-55-16"></a>
<a id="__codelineno-55-17" name="__codelineno-55-17" href="#__codelineno-55-17"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<a id="__codelineno-55-18" name="__codelineno-55-18" href="#__codelineno-55-18"></a><span class="w">    </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-55-19" name="__codelineno-55-19" href="#__codelineno-55-19"></a><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-56-1" name="__codelineno-56-1" href="#__codelineno-56-1"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-56-2" name="__codelineno-56-2" href="#__codelineno-56-2"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-56-3" name="__codelineno-56-3" href="#__codelineno-56-3"></a>
<a id="__codelineno-56-4" name="__codelineno-56-4" href="#__codelineno-56-4"></a><span class="k">def</span><span class="w"> </span><span class="nf">main</span>
<a id="__codelineno-56-5" name="__codelineno-56-5" href="#__codelineno-56-5"></a><span class="w">    </span><span class="n">api_key</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-56-6" name="__codelineno-56-6" href="#__codelineno-56-6"></a><span class="w">    </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-56-7" name="__codelineno-56-7" href="#__codelineno-56-7"></a><span class="w">    </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-56-8" name="__codelineno-56-8" href="#__codelineno-56-8"></a>
<a id="__codelineno-56-9" name="__codelineno-56-9" href="#__codelineno-56-9"></a><span class="w">    </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/ConteoPiezasEmpresa&quot;</span><span class="p">)</span>
<a id="__codelineno-56-10" name="__codelineno-56-10" href="#__codelineno-56-10"></a>
<a id="__codelineno-56-11" name="__codelineno-56-11" href="#__codelineno-56-11"></a><span class="w">    </span><span class="n">https</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-56-12" name="__codelineno-56-12" href="#__codelineno-56-12"></a><span class="w">    </span><span class="n">https</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-56-13" name="__codelineno-56-13" href="#__codelineno-56-13"></a>
<a id="__codelineno-56-14" name="__codelineno-56-14" href="#__codelineno-56-14"></a><span class="w">    </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-56-15" name="__codelineno-56-15" href="#__codelineno-56-15"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">api_key</span>
<a id="__codelineno-56-16" name="__codelineno-56-16" href="#__codelineno-56-16"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;fecha&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">fecha</span>
<a id="__codelineno-56-17" name="__codelineno-56-17" href="#__codelineno-56-17"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;idempresa&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">idempresa</span>
<a id="__codelineno-56-18" name="__codelineno-56-18" href="#__codelineno-56-18"></a>
<a id="__codelineno-56-19" name="__codelineno-56-19" href="#__codelineno-56-19"></a><span class="w">    </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">https</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-56-20" name="__codelineno-56-20" href="#__codelineno-56-20"></a><span class="w">    </span><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">read_body</span>
<a id="__codelineno-56-21" name="__codelineno-56-21" href="#__codelineno-56-21"></a><span class="k">end</span>
<a id="__codelineno-56-22" name="__codelineno-56-22" href="#__codelineno-56-22"></a>
<a id="__codelineno-56-23" name="__codelineno-56-23" href="#__codelineno-56-23"></a><span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
</div>
</div>
<h3 id="conteovehiculos"><strong>ConteoVehiculos</strong><a class="headerlink" href="#conteovehiculos" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
</div>
<p>El método {<mark>ConteoVehiculos</mark>} la cantidad especifica de vehiculos desde una fecha dada.</p>
<div class="admonition info">
<p class="admonition-title">Info</p>
</div>
<p>Ruta: https://apis.metasync.com/Almacen/ConteoVehiculos</p>
<div class="annotate">
<p>Response: --&gt; (1) &lt;--</p>
</div>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><pre><span></span><code><a id="__codelineno-57-1" name="__codelineno-57-1" href="#__codelineno-57-1"></a><span class="mi">20</span>
</code></pre></div></li>
</ol>
<p><strong>Parámetros de ConteoVehiculos:</strong></p>
<table>
<thead>
<tr>
<th>Name</th>
<th>Parameter</th>
<th>Type</th>
<th>Example</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>'apikey'</td>
<td>Header</td>
<td>(MS-5iq5RTxT6EW1BBqTHmGldK6ZwhQ7C7v9S)</td>
<td>Required</td>
<td>string</td>
<td>API key Channel</td>
</tr>
<tr>
<td>'fecha'</td>
<td>Header</td>
<td>(20/12/2023 21:29:56)</td>
<td>Required</td>
<td>string</td>
<td>Fecha a partir de la cual deseamos obtener vehiculos</td>
</tr>
</tbody>
</table>
<h4 id="code-exe_5">Code exe<a class="headerlink" href="#code-exe_5" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="7:5"><input checked="checked" id="__tabbed_7_1" name="__tabbed_7" type="radio" /><input id="__tabbed_7_2" name="__tabbed_7" type="radio" /><input id="__tabbed_7_3" name="__tabbed_7" type="radio" /><input id="__tabbed_7_4" name="__tabbed_7" type="radio" /><input id="__tabbed_7_5" name="__tabbed_7" type="radio" /><div class="tabbed-labels"><label for="__tabbed_7_1">C#</label><label for="__tabbed_7_2">java</label><label for="__tabbed_7_3">python</label><label for="__tabbed_7_4">javascript</label><label for="__tabbed_7_5">Ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-58-1" name="__codelineno-58-1" href="#__codelineno-58-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-58-2" name="__codelineno-58-2" href="#__codelineno-58-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-58-3" name="__codelineno-58-3" href="#__codelineno-58-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/ConteoVehiculos&quot;</span><span class="p">);</span>
<a id="__codelineno-58-4" name="__codelineno-58-4" href="#__codelineno-58-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-58-5" name="__codelineno-58-5" href="#__codelineno-58-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-58-6" name="__codelineno-58-6" href="#__codelineno-58-6"></a>
<a id="__codelineno-58-7" name="__codelineno-58-7" href="#__codelineno-58-7"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-58-8" name="__codelineno-58-8" href="#__codelineno-58-8"></a>
<a id="__codelineno-58-9" name="__codelineno-58-9" href="#__codelineno-58-9"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-59-1" name="__codelineno-59-1" href="#__codelineno-59-1"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.CloseableHttpResponse</span><span class="p">;</span>
<a id="__codelineno-59-2" name="__codelineno-59-2" href="#__codelineno-59-2"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.client.methods.HttpPost</span><span class="p">;</span>
<a id="__codelineno-59-3" name="__codelineno-59-3" href="#__codelineno-59-3"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.entity.StringEntity</span><span class="p">;</span>
<a id="__codelineno-59-4" name="__codelineno-59-4" href="#__codelineno-59-4"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.CloseableHttpClient</span><span class="p">;</span>
<a id="__codelineno-59-5" name="__codelineno-59-5" href="#__codelineno-59-5"></a><span class="kn">import</span><span class="w"> </span><span class="nn">org.apache.http.impl.client.HttpClients</span><span class="p">;</span>
<a id="__codelineno-59-6" name="__codelineno-59-6" href="#__codelineno-59-6"></a>
<a id="__codelineno-59-7" name="__codelineno-59-7" href="#__codelineno-59-7"></a><span class="kn">import</span><span class="w"> </span><span class="nn">java.io.IOException</span><span class="p">;</span>
<a id="__codelineno-59-8" name="__codelineno-59-8" href="#__codelineno-59-8"></a>
<a id="__codelineno-59-9" name="__codelineno-59-9" href="#__codelineno-59-9"></a><span class="kd">public</span><span class="w"> </span><span class="kd">class</span> <span class="nc">Main</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-59-10" name="__codelineno-59-10" href="#__codelineno-59-10"></a><span class="w">    </span><span class="kd">public</span><span class="w"> </span><span class="kd">static</span><span class="w"> </span><span class="kt">void</span><span class="w"> </span><span class="nf">main</span><span class="p">(</span><span class="n">String</span><span class="o">[]</span><span class="w"> </span><span class="n">args</span><span class="p">)</span><span class="w"> </span><span class="kd">throws</span><span class="w"> </span><span class="n">IOException</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-59-11" name="__codelineno-59-11" href="#__codelineno-59-11"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-59-12" name="__codelineno-59-12" href="#__codelineno-59-12"></a><span class="w">        </span><span class="n">String</span><span class="w"> </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_date&quot;</span><span class="p">;</span>
<a id="__codelineno-59-13" name="__codelineno-59-13" href="#__codelineno-59-13"></a>
<a id="__codelineno-59-14" name="__codelineno-59-14" href="#__codelineno-59-14"></a><span class="w">        </span><span class="n">CloseableHttpClient</span><span class="w"> </span><span class="n">httpClient</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClients</span><span class="p">.</span><span class="na">createDefault</span><span class="p">();</span>
<a id="__codelineno-59-15" name="__codelineno-59-15" href="#__codelineno-59-15"></a><span class="w">        </span><span class="n">HttpPost</span><span class="w"> </span><span class="n">httpPost</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">HttpPost</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/ConteoVehiculos&quot;</span><span class="p">);</span>
<a id="__codelineno-59-16" name="__codelineno-59-16" href="#__codelineno-59-16"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-59-17" name="__codelineno-59-17" href="#__codelineno-59-17"></a><span class="w">        </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">);</span>
<a id="__codelineno-59-18" name="__codelineno-59-18" href="#__codelineno-59-18"></a>
<a id="__codelineno-59-19" name="__codelineno-59-19" href="#__codelineno-59-19"></a><span class="w">        </span><span class="n">CloseableHttpResponse</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">httpClient</span><span class="p">.</span><span class="na">execute</span><span class="p">(</span><span class="n">httpPost</span><span class="p">);</span>
<a id="__codelineno-59-20" name="__codelineno-59-20" href="#__codelineno-59-20"></a>
<a id="__codelineno-59-21" name="__codelineno-59-21" href="#__codelineno-59-21"></a><span class="w">        </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">getEntity</span><span class="p">().</span><span class="na">getContent</span><span class="p">().</span><span class="na">toString</span><span class="p">());</span>
<a id="__codelineno-59-22" name="__codelineno-59-22" href="#__codelineno-59-22"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-59-23" name="__codelineno-59-23" href="#__codelineno-59-23"></a><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-60-1" name="__codelineno-60-1" href="#__codelineno-60-1"></a>    <span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-60-2" name="__codelineno-60-2" href="#__codelineno-60-2"></a>
<a id="__codelineno-60-3" name="__codelineno-60-3" href="#__codelineno-60-3"></a>    <span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
<a id="__codelineno-60-4" name="__codelineno-60-4" href="#__codelineno-60-4"></a>        <span class="n">api_key</span> <span class="o">=</span> <span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-60-5" name="__codelineno-60-5" href="#__codelineno-60-5"></a>        <span class="n">fecha</span> <span class="o">=</span> <span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-60-6" name="__codelineno-60-6" href="#__codelineno-60-6"></a>
<a id="__codelineno-60-7" name="__codelineno-60-7" href="#__codelineno-60-7"></a>        <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-60-8" name="__codelineno-60-8" href="#__codelineno-60-8"></a>            <span class="s1">&#39;apiKey&#39;</span><span class="p">:</span> <span class="n">api_key</span><span class="p">,</span>
<a id="__codelineno-60-9" name="__codelineno-60-9" href="#__codelineno-60-9"></a>            <span class="s1">&#39;fecha&#39;</span><span class="p">:</span> <span class="n">fecha</span>
<a id="__codelineno-60-10" name="__codelineno-60-10" href="#__codelineno-60-10"></a>        <span class="p">}</span>
<a id="__codelineno-60-11" name="__codelineno-60-11" href="#__codelineno-60-11"></a>
<a id="__codelineno-60-12" name="__codelineno-60-12" href="#__codelineno-60-12"></a>        <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/ConteoVehiculos&#39;</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-60-13" name="__codelineno-60-13" href="#__codelineno-60-13"></a>
<a id="__codelineno-60-14" name="__codelineno-60-14" href="#__codelineno-60-14"></a>        <span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">)</span>
<a id="__codelineno-60-15" name="__codelineno-60-15" href="#__codelineno-60-15"></a>
<a id="__codelineno-60-16" name="__codelineno-60-16" href="#__codelineno-60-16"></a>    <span class="k">if</span> <span class="vm">__name__</span> <span class="o">==</span> <span class="s2">&quot;__main__&quot;</span><span class="p">:</span>
<a id="__codelineno-60-17" name="__codelineno-60-17" href="#__codelineno-60-17"></a>        <span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-61-1" name="__codelineno-61-1" href="#__codelineno-61-1"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-61-2" name="__codelineno-61-2" href="#__codelineno-61-2"></a>
<a id="__codelineno-61-3" name="__codelineno-61-3" href="#__codelineno-61-3"></a><span class="w">    </span><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">main</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-61-4" name="__codelineno-61-4" href="#__codelineno-61-4"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span><span class="p">;</span>
<a id="__codelineno-61-5" name="__codelineno-61-5" href="#__codelineno-61-5"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span><span class="p">;</span>
<a id="__codelineno-61-6" name="__codelineno-61-6" href="#__codelineno-61-6"></a>
<a id="__codelineno-61-7" name="__codelineno-61-7" href="#__codelineno-61-7"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/ConteoVehiculos&#39;</span><span class="p">,</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-61-8" name="__codelineno-61-8" href="#__codelineno-61-8"></a><span class="w">            </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-61-9" name="__codelineno-61-9" href="#__codelineno-61-9"></a><span class="w">            </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-61-10" name="__codelineno-61-10" href="#__codelineno-61-10"></a><span class="w">                </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-61-11" name="__codelineno-61-11" href="#__codelineno-61-11"></a><span class="w">                </span><span class="s1">&#39;fecha&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">fecha</span>
<a id="__codelineno-61-12" name="__codelineno-61-12" href="#__codelineno-61-12"></a><span class="w">            </span><span class="p">}</span>
<a id="__codelineno-61-13" name="__codelineno-61-13" href="#__codelineno-61-13"></a><span class="w">        </span><span class="p">});</span>
<a id="__codelineno-61-14" name="__codelineno-61-14" href="#__codelineno-61-14"></a>
<a id="__codelineno-61-15" name="__codelineno-61-15" href="#__codelineno-61-15"></a><span class="w">        </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<a id="__codelineno-61-16" name="__codelineno-61-16" href="#__codelineno-61-16"></a><span class="w">        </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-61-17" name="__codelineno-61-17" href="#__codelineno-61-17"></a><span class="w">    </span><span class="p">}</span>
<a id="__codelineno-61-18" name="__codelineno-61-18" href="#__codelineno-61-18"></a>
<a id="__codelineno-61-19" name="__codelineno-61-19" href="#__codelineno-61-19"></a><span class="w">    </span><span class="nx">main</span><span class="p">();</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-62-1" name="__codelineno-62-1" href="#__codelineno-62-1"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-62-2" name="__codelineno-62-2" href="#__codelineno-62-2"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-62-3" name="__codelineno-62-3" href="#__codelineno-62-3"></a>
<a id="__codelineno-62-4" name="__codelineno-62-4" href="#__codelineno-62-4"></a><span class="k">def</span><span class="w"> </span><span class="nf">main</span>
<a id="__codelineno-62-5" name="__codelineno-62-5" href="#__codelineno-62-5"></a><span class="w">    </span><span class="n">api_key</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-62-6" name="__codelineno-62-6" href="#__codelineno-62-6"></a><span class="w">    </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-62-7" name="__codelineno-62-7" href="#__codelineno-62-7"></a>
<a id="__codelineno-62-8" name="__codelineno-62-8" href="#__codelineno-62-8"></a><span class="w">    </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/ConteoVehiculos&quot;</span><span class="p">)</span>
<a id="__codelineno-62-9" name="__codelineno-62-9" href="#__codelineno-62-9"></a>
<a id="__codelineno-62-10" name="__codelineno-62-10" href="#__codelineno-62-10"></a><span class="w">    </span><span class="n">https</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-62-11" name="__codelineno-62-11" href="#__codelineno-62-11"></a><span class="w">    </span><span class="n">https</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-62-12" name="__codelineno-62-12" href="#__codelineno-62-12"></a>
<a id="__codelineno-62-13" name="__codelineno-62-13" href="#__codelineno-62-13"></a><span class="w">    </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-62-14" name="__codelineno-62-14" href="#__codelineno-62-14"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">api_key</span>
<a id="__codelineno-62-15" name="__codelineno-62-15" href="#__codelineno-62-15"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;fecha&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">fecha</span>
<a id="__codelineno-62-16" name="__codelineno-62-16" href="#__codelineno-62-16"></a>
<a id="__codelineno-62-17" name="__codelineno-62-17" href="#__codelineno-62-17"></a><span class="w">    </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">https</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-62-18" name="__codelineno-62-18" href="#__codelineno-62-18"></a><span class="w">    </span><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">read_body</span>
<a id="__codelineno-62-19" name="__codelineno-62-19" href="#__codelineno-62-19"></a><span class="k">end</span>
<a id="__codelineno-62-20" name="__codelineno-62-20" href="#__codelineno-62-20"></a>
<a id="__codelineno-62-21" name="__codelineno-62-21" href="#__codelineno-62-21"></a><span class="n">main</span><span class="p">()</span>
</code></pre></div>
</div>
</div>
</div>
<h3 id="conteovehiculosempresa"><strong>ConteoVehiculosEmpresa</strong><a class="headerlink" href="#conteovehiculosempresa" title="Permanent link">&para;</a></h3>
<div class="admonition note">
<p class="admonition-title">Description</p>
</div>
<p>El método {<mark>ConteoVehiculosEmpresa</mark>} la cantidad especifica de vehiculos desde una fecha dada sobre una empresa.</p>
<div class="admonition info">
<p class="admonition-title">Info</p>
</div>
<p>Ruta: https://apis.metasync.com/Almacen/ConteoVehiculosEmpresa</p>
<div class="annotate">
<p>Response: --&gt; (1) &lt;--</p>
</div>
<ol>
<li><img alt="🙋‍♂️" class="twemoji" src="https://cdn.jsdelivr.net/gh/jdecked/twemoji@15.0.3/assets/svg/1f64b-200d-2642-fe0f.svg" title=":man_raising_hand:" />
<div class="highlight"><pre><span></span><code><a id="__codelineno-63-1" name="__codelineno-63-1" href="#__codelineno-63-1"></a><span class="mi">3</span>
</code></pre></div></li>
</ol>
<p><strong>Parámetros de ConteoVehiculosEmpresa:</strong></p>
<table>
<thead>
<tr>
<th>Name</th>
<th>Parameter</th>
<th>Type</th>
<th>Example</th>
<th>Type</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>'apikey'</td>
<td>Header</td>
<td>(MS-5iq5RTxT6EW1BBqTHmGldK6ZwhQ7C7v9S)</td>
<td>Required</td>
<td>string</td>
<td>API key Channel</td>
</tr>
<tr>
<td>'fecha'</td>
<td>Header</td>
<td>(20/12/2023 21:29:56)</td>
<td>Required</td>
<td>string</td>
<td>Fecha a partir de la cual deseamos obtener vehiculos</td>
</tr>
<tr>
<td>'idempresa'</td>
<td>Header</td>
<td>(1475)</td>
<td>Required</td>
<td>int32</td>
<td>Id local de la empresa</td>
</tr>
</tbody>
</table>
<h4 id="code-exe_6">Code exe<a class="headerlink" href="#code-exe_6" title="Permanent link">&para;</a></h4>
<div class="tabbed-set tabbed-alternate" data-tabs="8:5"><input checked="checked" id="__tabbed_8_1" name="__tabbed_8" type="radio" /><input id="__tabbed_8_2" name="__tabbed_8" type="radio" /><input id="__tabbed_8_3" name="__tabbed_8" type="radio" /><input id="__tabbed_8_4" name="__tabbed_8" type="radio" /><input id="__tabbed_8_5" name="__tabbed_8" type="radio" /><div class="tabbed-labels"><label for="__tabbed_8_1">C#</label><label for="__tabbed_8_2">java</label><label for="__tabbed_8_3">python</label><label for="__tabbed_8_4">javascript</label><label for="__tabbed_8_5">Ruby</label></div>
<div class="tabbed-content">
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-64-1" name="__codelineno-64-1" href="#__codelineno-64-1"></a><span class="kt">var</span><span class="w"> </span><span class="n">options</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClientOptions</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com&quot;</span><span class="p">);</span>
<a id="__codelineno-64-2" name="__codelineno-64-2" href="#__codelineno-64-2"></a><span class="kt">var</span><span class="w"> </span><span class="n">client</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestClient</span><span class="p">(</span><span class="n">options</span><span class="p">);</span>
<a id="__codelineno-64-3" name="__codelineno-64-3" href="#__codelineno-64-3"></a><span class="kt">var</span><span class="w"> </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">RestRequest</span><span class="p">(</span><span class="s">&quot;/Pedidos/ConteoVehiculosEmpresa&quot;</span><span class="p">);</span>
<a id="__codelineno-64-4" name="__codelineno-64-4" href="#__codelineno-64-4"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-64-5" name="__codelineno-64-5" href="#__codelineno-64-5"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">.</span><span class="n">ToString</span><span class="p">());</span>
<a id="__codelineno-64-6" name="__codelineno-64-6" href="#__codelineno-64-6"></a><span class="n">request</span><span class="p">.</span><span class="n">AddHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">);</span>
<a id="__codelineno-64-7" name="__codelineno-64-7" href="#__codelineno-64-7"></a>
<a id="__codelineno-64-8" name="__codelineno-64-8" href="#__codelineno-64-8"></a><span class="kt">var</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="n">client</span><span class="p">.</span><span class="n">PostAsync</span><span class="p">(</span><span class="n">request</span><span class="p">);</span>
<a id="__codelineno-64-9" name="__codelineno-64-9" href="#__codelineno-64-9"></a>
<a id="__codelineno-64-10" name="__codelineno-64-10" href="#__codelineno-64-10"></a><span class="k">return</span><span class="w"> </span><span class="n">response</span><span class="p">.</span><span class="n">Content</span><span class="p">;</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-65-1" name="__codelineno-65-1" href="#__codelineno-65-1"></a><span class="w">    </span><span class="n">String</span><span class="w"> </span><span class="n">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_api_key&quot;</span><span class="p">;</span>
<a id="__codelineno-65-2" name="__codelineno-65-2" href="#__codelineno-65-2"></a><span class="w">    </span><span class="n">String</span><span class="w"> </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s">&quot;your_date&quot;</span><span class="p">;</span>
<a id="__codelineno-65-3" name="__codelineno-65-3" href="#__codelineno-65-3"></a><span class="w">    </span><span class="n">Integer</span><span class="w"> </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span><span class="p">;</span>
<a id="__codelineno-65-4" name="__codelineno-65-4" href="#__codelineno-65-4"></a>
<a id="__codelineno-65-5" name="__codelineno-65-5" href="#__codelineno-65-5"></a><span class="w">    </span><span class="n">CloseableHttpClient</span><span class="w"> </span><span class="n">httpClient</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">HttpClients</span><span class="p">.</span><span class="na">createDefault</span><span class="p">();</span>
<a id="__codelineno-65-6" name="__codelineno-65-6" href="#__codelineno-65-6"></a><span class="w">    </span><span class="n">HttpPost</span><span class="w"> </span><span class="n">httpPost</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">new</span><span class="w"> </span><span class="n">HttpPost</span><span class="p">(</span><span class="s">&quot;https://apis.metasync.com/Pedidos/ConteoVehiculosEmpresa&quot;</span><span class="p">);</span>
<a id="__codelineno-65-7" name="__codelineno-65-7" href="#__codelineno-65-7"></a><span class="w">    </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;apiKey&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">apiKey</span><span class="p">);</span>
<a id="__codelineno-65-8" name="__codelineno-65-8" href="#__codelineno-65-8"></a><span class="w">    </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;fecha&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">fecha</span><span class="p">);</span>
<a id="__codelineno-65-9" name="__codelineno-65-9" href="#__codelineno-65-9"></a><span class="w">    </span><span class="n">httpPost</span><span class="p">.</span><span class="na">addHeader</span><span class="p">(</span><span class="s">&quot;idempresa&quot;</span><span class="p">,</span><span class="w"> </span><span class="n">idempresa</span><span class="p">);</span>
<a id="__codelineno-65-10" name="__codelineno-65-10" href="#__codelineno-65-10"></a>
<a id="__codelineno-65-11" name="__codelineno-65-11" href="#__codelineno-65-11"></a><span class="w">    </span><span class="n">CloseableHttpResponse</span><span class="w"> </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">httpClient</span><span class="p">.</span><span class="na">execute</span><span class="p">(</span><span class="n">httpPost</span><span class="p">);</span>
<a id="__codelineno-65-12" name="__codelineno-65-12" href="#__codelineno-65-12"></a>
<a id="__codelineno-65-13" name="__codelineno-65-13" href="#__codelineno-65-13"></a><span class="w">    </span><span class="n">System</span><span class="p">.</span><span class="na">out</span><span class="p">.</span><span class="na">println</span><span class="p">(</span><span class="n">response</span><span class="p">.</span><span class="na">getEntity</span><span class="p">().</span><span class="na">getContent</span><span class="p">().</span><span class="na">toString</span><span class="p">());</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-66-1" name="__codelineno-66-1" href="#__codelineno-66-1"></a><span class="kn">import</span> <span class="nn">requests</span>
<a id="__codelineno-66-2" name="__codelineno-66-2" href="#__codelineno-66-2"></a><span class="k">def</span> <span class="nf">main</span><span class="p">():</span>
<a id="__codelineno-66-3" name="__codelineno-66-3" href="#__codelineno-66-3"></a>    <span class="n">api_key</span> <span class="o">=</span> <span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-66-4" name="__codelineno-66-4" href="#__codelineno-66-4"></a>    <span class="n">fecha</span> <span class="o">=</span> <span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-66-5" name="__codelineno-66-5" href="#__codelineno-66-5"></a>    <span class="n">idempresa</span> <span class="o">=</span> <span class="mi">0</span>
<a id="__codelineno-66-6" name="__codelineno-66-6" href="#__codelineno-66-6"></a>
<a id="__codelineno-66-7" name="__codelineno-66-7" href="#__codelineno-66-7"></a>    <span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
<a id="__codelineno-66-8" name="__codelineno-66-8" href="#__codelineno-66-8"></a>        <span class="s1">&#39;apiKey&#39;</span><span class="p">:</span> <span class="n">api_key</span><span class="p">,</span>
<a id="__codelineno-66-9" name="__codelineno-66-9" href="#__codelineno-66-9"></a>        <span class="s1">&#39;fecha&#39;</span><span class="p">:</span> <span class="n">fecha</span><span class="p">,</span>
<a id="__codelineno-66-10" name="__codelineno-66-10" href="#__codelineno-66-10"></a>        <span class="s1">&#39;idempresa&#39;</span><span class="p">:</span> <span class="n">idempresa</span>
<a id="__codelineno-66-11" name="__codelineno-66-11" href="#__codelineno-66-11"></a>    <span class="p">}</span>
<a id="__codelineno-66-12" name="__codelineno-66-12" href="#__codelineno-66-12"></a>
<a id="__codelineno-66-13" name="__codelineno-66-13" href="#__codelineno-66-13"></a>    <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">post</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/ConteoVehiculosEmpresa&#39;</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">)</span>
<a id="__codelineno-66-14" name="__codelineno-66-14" href="#__codelineno-66-14"></a>
<a id="__codelineno-66-15" name="__codelineno-66-15" href="#__codelineno-66-15"></a>    <span class="nb">print</span><span class="p">(</span><span class="n">response</span><span class="o">.</span><span class="n">text</span><span class="p">)</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-67-1" name="__codelineno-67-1" href="#__codelineno-67-1"></a><span class="kd">const</span><span class="w"> </span><span class="nx">fetch</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nx">require</span><span class="p">(</span><span class="s1">&#39;node-fetch&#39;</span><span class="p">);</span>
<a id="__codelineno-67-2" name="__codelineno-67-2" href="#__codelineno-67-2"></a>
<a id="__codelineno-67-3" name="__codelineno-67-3" href="#__codelineno-67-3"></a><span class="k">async</span><span class="w"> </span><span class="kd">function</span><span class="w"> </span><span class="nx">main</span><span class="p">()</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-67-4" name="__codelineno-67-4" href="#__codelineno-67-4"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">apiKey</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span><span class="p">;</span>
<a id="__codelineno-67-5" name="__codelineno-67-5" href="#__codelineno-67-5"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span><span class="p">;</span>
<a id="__codelineno-67-6" name="__codelineno-67-6" href="#__codelineno-67-6"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mf">0</span><span class="p">;</span>
<a id="__codelineno-67-7" name="__codelineno-67-7" href="#__codelineno-67-7"></a>
<a id="__codelineno-67-8" name="__codelineno-67-8" href="#__codelineno-67-8"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">fetch</span><span class="p">(</span><span class="s1">&#39;https://apis.metasync.com/Pedidos/ConteoVehiculosEmpresa&#39;</span><span class="p">,</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-67-9" name="__codelineno-67-9" href="#__codelineno-67-9"></a><span class="w">        </span><span class="nx">method</span><span class="o">:</span><span class="w"> </span><span class="s1">&#39;POST&#39;</span><span class="p">,</span>
<a id="__codelineno-67-10" name="__codelineno-67-10" href="#__codelineno-67-10"></a><span class="w">        </span><span class="nx">headers</span><span class="o">:</span><span class="w"> </span><span class="p">{</span>
<a id="__codelineno-67-11" name="__codelineno-67-11" href="#__codelineno-67-11"></a><span class="w">            </span><span class="s1">&#39;apiKey&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">apiKey</span><span class="p">,</span>
<a id="__codelineno-67-12" name="__codelineno-67-12" href="#__codelineno-67-12"></a><span class="w">            </span><span class="s1">&#39;fecha&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">fecha</span><span class="p">,</span>
<a id="__codelineno-67-13" name="__codelineno-67-13" href="#__codelineno-67-13"></a><span class="w">            </span><span class="s1">&#39;idempresa&#39;</span><span class="o">:</span><span class="w"> </span><span class="nx">idempresa</span>
<a id="__codelineno-67-14" name="__codelineno-67-14" href="#__codelineno-67-14"></a><span class="w">        </span><span class="p">}</span>
<a id="__codelineno-67-15" name="__codelineno-67-15" href="#__codelineno-67-15"></a><span class="w">    </span><span class="p">});</span>
<a id="__codelineno-67-16" name="__codelineno-67-16" href="#__codelineno-67-16"></a>
<a id="__codelineno-67-17" name="__codelineno-67-17" href="#__codelineno-67-17"></a><span class="w">    </span><span class="kd">const</span><span class="w"> </span><span class="nx">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="k">await</span><span class="w"> </span><span class="nx">response</span><span class="p">.</span><span class="nx">text</span><span class="p">();</span>
<a id="__codelineno-67-18" name="__codelineno-67-18" href="#__codelineno-67-18"></a><span class="w">    </span><span class="nx">console</span><span class="p">.</span><span class="nx">log</span><span class="p">(</span><span class="nx">data</span><span class="p">);</span>
<a id="__codelineno-67-19" name="__codelineno-67-19" href="#__codelineno-67-19"></a><span class="p">}</span>
</code></pre></div>
</div>
<div class="tabbed-block">
<div class="highlight"><pre><span></span><code><a id="__codelineno-68-1" name="__codelineno-68-1" href="#__codelineno-68-1"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;uri&#39;</span>
<a id="__codelineno-68-2" name="__codelineno-68-2" href="#__codelineno-68-2"></a><span class="nb">require</span><span class="w"> </span><span class="s1">&#39;net/http&#39;</span>
<a id="__codelineno-68-3" name="__codelineno-68-3" href="#__codelineno-68-3"></a>
<a id="__codelineno-68-4" name="__codelineno-68-4" href="#__codelineno-68-4"></a><span class="k">def</span><span class="w"> </span><span class="nf">main</span>
<a id="__codelineno-68-5" name="__codelineno-68-5" href="#__codelineno-68-5"></a><span class="w">    </span><span class="n">api_key</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_api_key&#39;</span>
<a id="__codelineno-68-6" name="__codelineno-68-6" href="#__codelineno-68-6"></a><span class="w">    </span><span class="n">fecha</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s1">&#39;your_date&#39;</span>
<a id="__codelineno-68-7" name="__codelineno-68-7" href="#__codelineno-68-7"></a><span class="w">    </span><span class="n">idempresa</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="mi">0</span>
<a id="__codelineno-68-8" name="__codelineno-68-8" href="#__codelineno-68-8"></a>
<a id="__codelineno-68-9" name="__codelineno-68-9" href="#__codelineno-68-9"></a><span class="w">    </span><span class="n">url</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">URI</span><span class="p">(</span><span class="s2">&quot;https://apis.metasync.com/Pedidos/ConteoVehiculosEmpresa&quot;</span><span class="p">)</span>
<a id="__codelineno-68-10" name="__codelineno-68-10" href="#__codelineno-68-10"></a>
<a id="__codelineno-68-11" name="__codelineno-68-11" href="#__codelineno-68-11"></a><span class="w">    </span><span class="n">https</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="o">.</span><span class="n">host</span><span class="p">,</span><span class="w"> </span><span class="n">url</span><span class="o">.</span><span class="n">port</span><span class="p">)</span>
<a id="__codelineno-68-12" name="__codelineno-68-12" href="#__codelineno-68-12"></a><span class="w">    </span><span class="n">https</span><span class="o">.</span><span class="n">use_ssl</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="kp">true</span>
<a id="__codelineno-68-13" name="__codelineno-68-13" href="#__codelineno-68-13"></a>
<a id="__codelineno-68-14" name="__codelineno-68-14" href="#__codelineno-68-14"></a><span class="w">    </span><span class="n">request</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="no">Net</span><span class="o">::</span><span class="no">HTTP</span><span class="o">::</span><span class="no">Post</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="n">url</span><span class="p">)</span>
<a id="__codelineno-68-15" name="__codelineno-68-15" href="#__codelineno-68-15"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;apiKey&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">api_key</span>
<a id="__codelineno-68-16" name="__codelineno-68-16" href="#__codelineno-68-16"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;fecha&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">fecha</span>
<a id="__codelineno-68-17" name="__codelineno-68-17" href="#__codelineno-68-17"></a><span class="w">    </span><span class="n">request</span><span class="o">[</span><span class="s2">&quot;idempresa&quot;</span><span class="o">]</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">idempresa</span>
<a id="__codelineno-68-18" name="__codelineno-68-18" href="#__codelineno-68-18"></a>
<a id="__codelineno-68-19" name="__codelineno-68-19" href="#__codelineno-68-19"></a><span class="w">    </span><span class="n">response</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">https</span><span class="o">.</span><span class="n">request</span><span class="p">(</span><span class="n">request</span><span class="p">)</span>
<a id="__codelineno-68-20" name="__codelineno-68-20" href="#__codelineno-68-20"></a><span class="w">    </span><span class="nb">puts</span><span class="w"> </span><span class="n">response</span><span class="o">.</span><span class="n">read_body</span>
<a id="__codelineno-68-21" name="__codelineno-68-21" href="#__codelineno-68-21"></a><span class="k">end</span>
<a id="__codelineno-68-22" name="__codelineno-68-22" href="#__codelineno-68-22"></a>
<a id="__codelineno-68-23" name="__codelineno-68-23" href="#__codelineno-68-23"></a><span class="n">main</span><span class="p">()</span>
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