---
tags: sinatra, sessions
languages: ruby
resources: 2
---

# Sinatra Sessions

Today we're going to be learning all about sessions and how they work!

### Introduction to Sessions

The Hyper-Text Transfer Protocol (HTTP) is, by definition, a stateless protocol. The reason why it's called a stateless protocol is because a server does not attach special meaning to a request, and consequently does not require the server to retain any information about a user or entity for the duration of a request.

So how does a web application maintain state for a user? It can do this via `cookie-based sessions`, where a cookie is stored on the client-side (in the browser) and used to warehouse data related to activity in the current user's session.
