---
tags: sinatra, sessions
languages: ruby
resources: 1
---

# Sinatra Sessions

Today we're going to be learning all about sessions and how they work!

### Instructions
- Clone this repository down to your local directory.
- Type in `bundle install` in your terminal
- Follow along in the `README`
- As you go through each exercise, type in `rspec` to ensure that your tests pass

### Introduction to Sessions

The Hyper-Text Transfer Protocol (HTTP) is, by definition, a stateless protocol. The reason why it's called a stateless protocol is because a server does not attach special meaning to a request, and consequently does not require the server to retain any information about a user or entity for the duration of a request.

So how does a web application maintain state for a user? It can do this via `cookie-based sessions`, where a cookie is stored on the client-side (in the browser) and used to warehouse data related to activity in the current user's session.

### Introduction to the Lab

This is a simple lab that will go through the basic implementation of a session in Sinatra. Be sure to read the <a href="spec/sinatra_sessions_spec.rb">specs</a> to see what's required of each step.

### First Exercise

A session cookie is simply a text file that consists of key-value pairs. In a web application, a session cookie is represented by a hash that is called `session`. So, for example, if we have a key in our sessions hash that is called "happiness", and we set it equal to the number 3.14, it will look like this:

```ruby
session = {
  'happiness' => 3.14
}
```

We can access this ID attribute via `session[:happiness]` or `session['happiness']`.

In our first exercise, we will navigate to the `/first_exercise` path. Please follow instructions for each step, and be sure to run `rspec` before implementing each step. Make each test pass before proceeding to the next step.

### Second Exercise

In our second exercise, we will navigate to the `/second_exercise` path. As in the previous lesson, be sure to run `rspec` before implementing each step. Make each test pass before proceeding to the next step.

### Resources
- [Primer on Cookie-Based Sessions](http://www.allaboutcookies.org/cookies/session-cookies-used-for.html)
