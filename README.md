
This is a sample DDS application (originally taken from Prismtech 
.../examples/dcps/HelloWorld/isocpp) that integrates with bitbake and shows
typical build and installation activities on the target environment.

Note that this component is not applicable for native execution, and is a 
intended only to exercise the bitbake execution on target.  If you are
interested in a native (host) sample DDS application, a better selection
would be DDS/sample_req_rep.

A sample execution run on the target is shown below -

<pre><code>
root@qemux86-64:~# /usr/bin/subscriber &
root@qemux86-64:~# /usr/bin/publisher
=== [Publisher] writing a message containing :
    userID  : 1
    Message : "Hello World"
=== [Subscriber] message received :
    userID  : 1
    Message : "Hello World"
[1]+  Done                       /usr/bin/subscriber
</code></pre>

