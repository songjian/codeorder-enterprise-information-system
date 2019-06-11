FROM rails:onbuild
COPY . /usr/src/app
RUN bundle install
EXPOSE 3000
RUN bundle exec rails yarn:install
RUN bundle exec rake assets:precompile
CMD ["rails", "server", "-b", "0.0.0.0"]
