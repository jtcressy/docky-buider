# docky-builder

This is a docker container for easily managing the build-deps of docky when building. You can use this container to install docky on your unsupported system as long as you can install the runtime dependencies. Sometimes a system may not have access to the proper build dependencies, and that is what this container is for. 

This container currently pulls from the latest branch on launchpad. 

Example install command:

``docker run -it -v /usr/local:/usr/local jtcressy/docky-builder``

The entrypoint script will build and install to /usr/local. All you have to do on your host is run ``docky`` and you're all set assuming you've installed the required runtime dependencies. See [here](http://wiki.go-docky.com/index.php?title=Installation#Installing_From_Source) about the required installation dependencies.