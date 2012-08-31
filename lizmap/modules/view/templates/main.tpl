{meta_html csstheme 'css/main.css'}

<div id="header" class="navbar navbar-fixed-top">
  <div id="logo">
    <h1>{$repositoryLabel}</h1>
  </div>
  <div id="auth" class="navbar-inner">
    <ul class="nav pull-right">
      {if $isConnected}
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
          <b id="info-user-login">{$user->login|eschtml}</b>
          <b class="caret"></b>
        </a>
        <ul class="dropdown-menu pull-right">
          <li><a href="{jurl 'jauth~login:out'}">{@view~default.header.disconnect@}</a></li>
        </ul>
      </li>
      {else}
      <li>
        <a href="{jurl 'jauth~login:form'}">{@view~default.header.connect@}</a>
      </li>
      {/if}
    </ul>
  </div>
</div>
<div id="content" class="container">
{jmessage_bootstrap}
{$MAIN}
<footer class="footer">
  <p class="pull-right">
    {image $j_themepath.'css/img/logo_footer.png'}
  </p>
</footer>
</div>
