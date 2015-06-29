Install and Run FDA.ninja Locally
=================================

if we’re not talking about using a docker container locally, then:

In order to install and run fda.ninja locally, you need to have [rvm][1] already installed on your machine. Once you've installed rvm, run the following commands to install [bundler][2]:

    $ rvm install 2.2
    $ rvm use 2.2
    $ gem install bundler

Next, clone the repository:

    $ git clone https://github.com/dwafler/gsa_2015.git

Now you can "install" the app:

    $ cd gsa_2015
    $ bundle install

You will need to add your api key as an environment variable, either through `bash_profile` or from shell, before running the execute command: 

    $ export FDA_API_KEY=<Your API Key> 

Finally, execute:

    $ bundle exec rails s

[1]: https://rvm.io/
[2]: http://bundler.io/