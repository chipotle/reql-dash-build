s/^command: (.*)$/title: "ReQL command: \1"/
/^{% apibody %}/{
N
s/\n//
s/^{% apibody %}/<pre class="api"><code>/
}
s|^{% endapibody %}|</code></pre>|
s/^{% infobox.* %}/<div class="infobox">/
s|^{% endinfobox %}|</div>|
s|^{% apisection (.*) %}|<h1>\1</h1>|
s|^{% endapisection %}||
s|<img src="/assets/images/docs/api_illustrations/(.*)"|<img src="images/\1"|
s|\]\((.*)/\)|](\1.html)|
