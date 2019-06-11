FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client && gem sources --add https://gems.ruby-china.com/ --remove https://rubygems.org/ && bundle config mirror.https://rubygems.org https://gems.ruby-china.com
RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile_docker /myapp/Gemfile
COPY Gemfile_docker.lock /myapp/Gemfile.lock
RUN bundle install
COPY . /myapp

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]