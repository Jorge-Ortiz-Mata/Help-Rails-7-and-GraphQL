FROM ruby:3.0.4

WORKDIR /blog-graphql

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
