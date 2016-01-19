# Change "command" YAML to "title"

s/^command: (.*)$/title: "ReQL command: \1"/

# Convert API body block to a <pre> block

/^{% apibody %}/{
N
s/\n//
s/^{% apibody %}/<pre class="api"><code>/
}
s|^{% endapibody %}|</code></pre>|

# Convert infoboxes to <div> blocks

s/^{% infobox.* %}/<div class="infobox">/
s|^{% endinfobox %}|</div>|

# Turn API section blocks to <h1> titles

s|^{% apisection (.*) %}|<h1>\1</h1>|
s|^{% endapisection %}||

# URL rewriters

s|src="/assets/images/docs/api_illustrations/(.*)"|src="images/\1"|
s|/api/[a-z]*/(.*)/|\1.html|
s|/docs/(.*)/|http://rethinkdb.com/docs/\1/|
