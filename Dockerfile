FROM ruby:2.7

RUN apt update; apt install -y nodejs postgresql-client;

WORKDIR /MedicalApi
COPY Gemfile /MedicalApi/Gemfile
COPY Gemfile.lock /MedicalApi/Gemfile.lock
RUN bundle install
COPY . /MedicalApi

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]