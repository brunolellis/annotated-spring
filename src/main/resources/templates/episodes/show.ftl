<@application title="${episode.title}" description="${episode.summary}">
  <div class="full-page">
    <div class="episode-header">
      <div class="episode-meta row">
        <h3 class="episode-number col-sm-6 col-xs-6">Episode #${episode.id}</h3>
        <h6 class="episode-duration col-sm-6 col-xs-6"><span class="glyphicon glyphicon-time" aria-hidden="true"></span>${episode.duration} m</h6>
      </div>
      <h1>${episode.title}</h1>
      <p>${episode.summary}</p>
    </div>
    <#if episode.youtubeId?? >
      <div class="iframe-wrapper">
        <iframe src="https://www.youtube.com/embed/${episode.youtubeId}?vq=hd720" frameborder="0" allowfullscreen></iframe>
      </div>
    </#if>

    <div>
        <div class="nav-tab-wrapper">
          <ul class="nav nav-tabs" role="tablist">
              <li role="presentation" class="active">
                  <a href="#notes" aria-controls="notes" role="tab" data-toggle="tab">Transcript</a>
              </li>
              <li role="presentation">
                  <a href="#comments" aria-controls="comments" role="tab" data-toggle="tab" class="disqus-comment-count" data-disqus-url="http://www.annotatedspring.com${springMacroRequestContext.requestUri}">Comments</a>
              </li>
          </ul>
          <#if episode.sourcecodeUrl?? >
            <a href="${episode.sourcecodeUrl}" class="btn btn-primary btn-sm view-source-code">Episode Source Code</a>
          </#if>
        </div>

        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="notes">
                <p>${episode.notesHtml}</p>
            </div>

            <div role="tabpanel" class="tab-pane" id="comments">
                <#include "_discus.ftl" >
            </div>
        </div>
    </div>
  </div>
</@application>