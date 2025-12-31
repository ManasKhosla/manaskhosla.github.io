FROM ruby:3.3-bookworm

# System dependencies
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  npm \
  git \
  && rm -rf /var/lib/apt/lists/*

# Jekyll + Bundler
RUN gem install bundler jekyll

WORKDIR /app

# Install gems first for caching
COPY Gemfile ./

RUN bundle lock || true \
 && bundle install

# Copy site files
COPY . .

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--drafts", "--watch", "--host", "0.0.0.0"]
