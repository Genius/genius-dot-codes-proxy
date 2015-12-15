# The `genius.codes` proxy

This is a tiny web proxy server that activates [Genius](http://genius.com)
annotation on any web page\*.

It's written as a demonstration and proof of concept, and is about as far from
production-ready as a piece of software could be. But it does look a lot like
the first version of the proxy that powers Genius annotations across the web.

This repository serves as the show notes for our presentation at [Code
Genius](http://code.genius.com), in which we live coded roughly what you see in
`server.rb`.

### Video of the presentation

Watch [Mat Brown's presentation.](https://www.youtube.com/watch?v=5WuPFUoqxbI)

## Installing and running it

* Clone the repo
* Run `bundle`
* Run `ruby server.rb -s`

## Using it

You can proxy any page by prefixing its URL with `localhost:9000`. For
instance, to see the annotations on the Tender Love Making blog, point your
browser to `http://localhost:9000/tenderlovemaking.com`.

## Technologies

The proxy is written in Ruby; it uses
[Goliath](https://github.com/postrank-labs/goliath), a non-blocking Ruby web
server; [em-synchrony](https://github.com/igrigorik/em-synchrony), an extension
to [EventMachine](https://github.com/eventmachine/eventmachine) that lets us
write non-blocking code in a familiar linear style using [Ruby
fibers](http://ruby-doc.org//core-2.2.0/Fiber.html).

## Motivation

Mostly to demonstrate that you don't need Node to write this kind of thing.

## Caveats

\* Any web page whose head tag starts with the exact string `<head>`

## License

This software is released under the MIT license. See attached LICENSE for
details.
