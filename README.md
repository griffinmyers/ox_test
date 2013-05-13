ox_test
=======

A test case that shows the Ox Sax Parser seg faulting within a rails app. 

Installation and Running
========================

* `clone` the repo
* Use `Ruby 1.9.3-p125` (at least that's what I used to get the segfault)
* `bundle install`
* `rails s`
* `while(1)`
  * visit `http://localhost:3000/parse/` 
  * `Refresh a few times`
  * `wait a minute`
  * `refresh a bit more`
  * `give it some time`

Generally within ~5 minutes I'll see the ruby seg fault
