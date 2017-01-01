FROM soumyaray/ruby-http:2.3.1

WORKDIR /worker
ADD . /worker

ADD Gemfile .
ADD Gemfile.lock .

RUN bundle install

ENTRYPOINT ruby groups_update_worker.rb

# build image with:
#   docker build --rm -t soumyaray/facegroup_groups_update:0.1.0 .

# push to docker hub with:
#   docker push soumyaray/facegroup_groups_update:0.1.0
