<h1>服务说明</h1>
<div class="row">
    <div class="col-md-6">
        <div style="margin-left: 30px;margin-top: 20px;">
            <h3>如何使用</h3>
            <p>
                在Spring Cloud应用的配置文件中，设置eureka的地址为：
                <span style="color: #357ebd;font-weight: bold;">eureka.client.serviceUrl.defaultZone=http://eureka.didispace.com/eureka/</span>
            </p>
            <br>
            <h3>注意事项</h3>
            <div style="color:red;">
                <li>由于本Eureka Server为公益应用，旨在帮助Spring Cloud的开发者进行学习和调试开发使用。</li>
                <li>可能存在运行不稳定而重启等风险，请勿将该注册中心用于您的生产配置中。</li>
                <li>同时，为了保障大家使用的顺畅，使用者请勿对本注册中心进行压力测试。</li>
            </div>
        </div>
    </div>
    <#--替换-->
    <div class="col-md-6">
        <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
        <!-- eureka-server -->
        <ins class="adsbygoogle"
             style="display:block"
             data-ad-client="ca-pub-8254913025324557"
             data-ad-slot="2955989929"
             data-ad-format="auto"></ins>
        <script>
            (adsbygoogle = window.adsbygoogle || []).push({});
        </script>
    </div>
</div>
<br>
<hr>
<br>
<h1>System Status</h1>
<div class="row">
  <div class="col-md-6">
    <table id='instances' class="table table-condensed table-striped table-hover">
      <#if amazonInfo??>
        <tr>
          <td>EUREKA SERVER</td>
          <td>AMI: ${amiId!}</td>
        </tr>
        <tr>
          <td>Zone</td>
          <td>${availabilityZone!}</td>
        </tr>
        <tr>
          <td>instance-id</td>
          <td>${instanceId!}</td>
        </tr>
      </#if>
      <tr>
        <td>Environment</td>
        <td>${environment!}</td>
      </tr>
      <tr>
        <td>Data center</td>
        <td>${datacenter!}</td>
      </tr>
    </table>
  </div>
  <div class="col-md-6">
    <table id='instances' class="table table-condensed table-striped table-hover">
      <tr>
        <td>Current time</td>
        <td>${currentTime}</td>
      </tr>
      <tr>
        <td>Uptime</td>
        <td>${upTime}</td>
      </tr>
      <tr>
        <td>Lease expiration enabled</td>
        <td>${registry.leaseExpirationEnabled?c}</td>
      </tr>
      <tr>
        <td>Renews threshold</td>
        <td>${registry.numOfRenewsPerMinThreshold}</td>
      </tr>
      <tr>
        <td>Renews (last min)</td>
        <td>${registry.numOfRenewsInLastMin}</td>
      </tr>
    </table>
  </div>
</div>

<#if isBelowRenewThresold>
    <#if !registry.selfPreservationModeEnabled>
        <h4 id="uptime"><font size="+1" color="red"><b>RENEWALS ARE LESSER THAN THE THRESHOLD. THE SELF PRESERVATION MODE IS TURNED OFF.THIS MAY NOT PROTECT INSTANCE EXPIRY IN CASE OF NETWORK/OTHER PROBLEMS.</b></font></h4>
    <#else>
        <h4 id="uptime"><font size="+1" color="red"><b>EMERGENCY! EUREKA MAY BE INCORRECTLY CLAIMING INSTANCES ARE UP WHEN THEY'RE NOT. RENEWALS ARE LESSER THAN THRESHOLD AND HENCE THE INSTANCES ARE NOT BEING EXPIRED JUST TO BE SAFE.</b></font></h4>
    </#if>
<#elseif !registry.selfPreservationModeEnabled>
    <h4 id="uptime"><font size="+1" color="red"><b>THE SELF PRESERVATION MODE IS TURNED OFF.THIS MAY NOT PROTECT INSTANCE EXPIRY IN CASE OF NETWORK/OTHER PROBLEMS.</b></font></h4>
</#if>

<h1>DS Replicas</h1>
<ul class="list-group">
  <#list replicas as replica>
    <li class="list-group-item"><a href="${replica.value}">${replica.key}</a></li>
  </#list>
</ul>

