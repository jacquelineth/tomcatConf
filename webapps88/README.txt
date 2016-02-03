Remember to edit DecisionService/WEB-INF/classes/ra.xml to switch plugins to 

<config-property>
<config-property-name>Plugins</config-property-name>
<config-property-type>java.lang.String</config-property-type>
<config-property-value>{pluginClass=Management,xuName=default,protocol=tcpip,tcpip.port=1883,tcpip.host=localhost,tcpip.retryInterval=2000},{pluginClass=HTDS}</config-property-value>
</config-property>

Then Run RES diagnostic to be sure