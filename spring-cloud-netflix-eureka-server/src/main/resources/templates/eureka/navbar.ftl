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
            <div style="margin-top: 20px;">
                P.S. 如在学习与使用过程中遇到困难，就来<a href="http://spring4all.com" target="_blank">Spring For All社区</a>探讨交流。
            </div>
        </div>
    </div>
    <#--替换-->
    <div class="col-md-3">
        <div style="margin-left: 30px;margin-top: 20px;">
            <h3>参考资料</h3>
            <div>
                <li><a href="http://blog.didispace.com/Spring-Boot%E5%9F%BA%E7%A1%80%E6%95%99%E7%A8%8B/" target="_blank">Spring Boot基础教程</a></li>
                <li><a href="http://blog.didispace.com/Spring-Cloud%E5%9F%BA%E7%A1%80%E6%95%99%E7%A8%8B/" target="_blank">Spring Cloud基础教程</a></li>
            </div>
            <br>
            <h3>关注我</h3>
            <div>
                <li class="foot-li">
                    <a href="https://github.com/dyc87112" target="_blank">Github</a>
                </li>
                <li class="foot-li">
                    <a href="http://git.oschina.net/didispace" target="_blank">码云</a>
                </li>
                <li class="foot-li">
                    <a href="http://www.jianshu.com/u/6a622d516e32" target="_blank">简书</a>
                </li>
                <li class="foot-li">
                    <a href="https://www.zhihu.com/people/di-yong-chao-86" target="_blank">知乎</a>
                </li>
            </div>

        </div>
    </div>
    <div class="col-md-3">
        <div style="margin-left: 30px;margin-top: 20px;">
            <h3>公众号</h3>
            <img style="width: 80px;" src="http://blog.didispace.com/css/images/weixin.jpg" />
            <br><br>
            <h3>我的书</h3>
            <script type="text/javascript">var jd_union_pid="956083303";var jd_union_euid="";</script><script type="text/javascript" src="//ads-union.jd.com/static/js/union.js"></script>
        </div>
    </div>
    <div class="col-md-12" style="text-align: center;">
        <div id="cyReward" role="cylabs" data-use="reward"></div>
    </div>
</div>
<br>
<hr>
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

<#--<#if isBelowRenewThresold>-->
    <#--<#if !registry.selfPreservationModeEnabled>-->
        <#--<h4 id="uptime"><font size="+1" color="red"><b>RENEWALS ARE LESSER THAN THE THRESHOLD. THE SELF PRESERVATION MODE IS TURNED OFF.THIS MAY NOT PROTECT INSTANCE EXPIRY IN CASE OF NETWORK/OTHER PROBLEMS.</b></font></h4>-->
    <#--<#else>-->
        <#--<h4 id="uptime"><font size="+1" color="red"><b>EMERGENCY! EUREKA MAY BE INCORRECTLY CLAIMING INSTANCES ARE UP WHEN THEY'RE NOT. RENEWALS ARE LESSER THAN THRESHOLD AND HENCE THE INSTANCES ARE NOT BEING EXPIRED JUST TO BE SAFE.</b></font></h4>-->
    <#--</#if>-->
<#--<#elseif !registry.selfPreservationModeEnabled>-->
    <#--<h4 id="uptime"><font size="+1" color="red"><b>THE SELF PRESERVATION MODE IS TURNED OFF.THIS MAY NOT PROTECT INSTANCE EXPIRY IN CASE OF NETWORK/OTHER PROBLEMS.</b></font></h4>-->
<#--</#if>-->

<h1>DS Replicas</h1>
<ul class="list-group">
  <#list replicas as replica>
    <li class="list-group-item"><a href="${replica.value}">${replica.key}</a></li>
  </#list>
</ul>

<div class="row" style="text-align: center;">
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
<br>