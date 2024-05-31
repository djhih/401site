{% set page.title = '首頁' %}
<div id="brand" class="brand">
  <div class="brand_inner">
  <header id="banner" class="wrapper">
    <div class="inner">
      <h2 id="banner-title">國立中正大學資訊工程學系 - 系計算機中心</h2>
      <div id="banner-start">

      </div>
    </div>
  </header>
  </div>
</div>
<div id="content-wrap">
  <div class="wrapper">
    <div class="inner">

    {% for post in page.posts %}
      {% if loop.index == 1 %}
        {{ partial('partial/post', {post: post}) }}
      {% else %}
        <article class="article post archive-post" itemscope itemtype="http://schema.org/Article">
          <a class="archive-post-link" href="{{ url_for(post.path) }}">
            <strong class="archive-post-title" itemprop="name">{{ post.title }}</strong>
            <span class="archive-post-date">{{ time_tag(post.date) }}</span>
          </a>
        </article>
      {% endif %}
    {% endfor %}
    </div>
  </div>
</div>
