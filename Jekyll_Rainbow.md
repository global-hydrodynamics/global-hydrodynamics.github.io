# Using Jekyll on Rainbow

This is a note on using Jekyll on rainbow/hydro server (IIS U-Tokyo internal note)

## Install jekyll
1. Ruby is already installed
Make sure you can use it.
``` bash
ruby -v
 (ruby version to be shown)
```

2. Make your own ruby/gem environment.
Add below to your .bashrc

```bash
vi ~/.bashrc
 (add followings)
#Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
```

Then, install jekyll bandler
```bash
gem install jekyll bundler
```

3. Make a test jekyll site
Make a test directory and check whether jekyll works OK. 
cd ~

``` bash
cd ~
mkdir ~/jekyll_test  # if you have not created this
cd ~/jekyll_test
jekyll new myblog
cd ./myblog
ls
 (Gemfile and other jekill files are shown)
```

If Jekyll files are generated, this should be OK.

4. Test Yamazaki lab site.
Copy Yamazaki lab jekyll sources (from GitHub or copy from ~yamadai/public_html/jekyll/).
Put it to ~USER/public_html/jekyll. The directory should look like this.

``` bash 
mkdir ~/public_html   # if you have not created public_html)
cd ~/public_html/

cp -r ~yamadai/public_html/jekyll ~/public_html/
cd ~/public_html/jekyll
ls
  (jekyll datas are to be shown)
  assets/      css/    favicon.ico  Gemfile    images/     js/        _pages/      README.md  _site/
  _config.yml  _data/  fonts/      Gemfile.lock    _includes/  _layouts/  _plugins/  _sass/
```

Remove Gemfile.lock and update it by "gem update", new Gemfile.lock will be created.

``` bash
cd ~/public_html/jekyll
rm Gemfile.lock 
gem update
  (this will take some time)
```

Change "baseurl" in _config.yml to your hydro web url

```
vi ~/jekyll/_config.yml

(modify followings)

# If constructed on website root, no need to specify
#baseurl: ""
#url: ""
# If constructed other than website root, specify directory
baseurl: "http://hydro.iis.u-tokyo.ac.jp/~USER/jekyll/_site"
url: ""
```

Then, build jekyll page, static HTML is generated in _site/

``` bash
jekyll build
ls _site
 (index.html and other pages+data ae shown)
```

Now It can be viewed from web browser (http://hydro.iis.u-tokyo.ac.jp/~USER/jekyll/_site).

