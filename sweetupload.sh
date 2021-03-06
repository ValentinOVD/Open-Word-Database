if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  echo -e "Starting to update binary-master\n"

  #copy data we're interested in to other place
  cp -R build $HOME/build

  #go to home and setup git
  cd $HOME
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis"

  #using token clone gh-pages branch
  git clone --quiet --branch=master https://${GH_TOKEN}@github.com/ValentinOVD/Open-Word-Database-bin binary > /dev/null

  #go into diractory and copy data we're interested in to that directory
  cd binary
  cp -Rf $HOME/build/* .

  #add, commit and push files
  git add -A .
  git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to binary"
  git push -fq origin master > /dev/null

  echo -e "Done magic\n"
fi
