---
tags: sinatra, sessions
languages: ruby
resources: 1
---

# Sinatra Sessions

Today we're going to be learning all about sessions and how they work!

### Introduction to Sessions

The Hyper-Text Transfer Protocol (HTTP) is, by definition, a stateless protocol. The reason why it's called a stateless protocol is because a server does not attach special meaning to a request, and consequently does not require the server to retain any information about a user or entity for the duration of a request.

So how does a web application maintain state for a user? It can do this via `cookie-based sessions`, where a cookie is stored on the client-side (in the browser) and used to warehouse data related to activity in the current user's session.

### First Exercise

A session cookie is simply a text file that consists of key-value pairs. In a web application, a session cookie is represented by a hash that is called `session`. So, for example, if we have a key in our sessions hash that is called ID, and we set it equal to the number 22, it will look like this:

```ruby
session = {
  'id' => 22
}
```

We can access this ID attribute via `session[:id]` or `session['id']`.

In our first exercise, we will navigate to the `/first_lesson` path. Please follow instructions for each step, and be sure to run `rspec` before implementing each step. Make each test past before proceeding to the next step.

### Second Exercise

In our second exercise, we will navigate to the `/second_lesson` path. As in the previous lesson, be sure to run `rspec` before implementing each step. Make each test past before proceeding to the next step.

### Resources
- [Cookie-based sessions in Sinatra](http://rubylearning.com/blog/2009/09/30/cookie-based-sessions-in-sinatra/)
