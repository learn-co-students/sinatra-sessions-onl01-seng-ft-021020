# Using Sessions

## Objectives

1. Gain a deeper understanding of sessions in a web application.
2. Use sesions to persist information across multiple HTTP requests in a Sinatra app. 

## Sessions and Data Persistance 

The Hyper-Text Transfer Protocol (HTTP) is, by definition, a stateless protocol. What does "stateless" mean? HTTP is called a "stateless protocol" because a server does not attach special meaning to a request, and consequently does not require the server to retain any information about a user or entity for the duration of a request.

For example, when you log in to http://www.learn.co, you fill out a form with your Github username and password. Learn recieves that information and, at that moment in time, knows who you are by matching up that log in information, submitted via a HTTP POST request, with data in it's database. What about after you log in? After you log in and click a link for a particular lesson, you are sending another HTTP request to Learn. At this point in the process of your interaction with the Learn web application, Learn has no idea who you are! But wait, you might be thinking. Did I just log in? How can Learn forget so easily? That is what it means to be "stateless". Each web request you send is, from the point of view of the application that is recieving that request, totally independent. 

Then how, you might be wondering, does Learn (and every other web app) know who I am after I log in? Through the use of **sessions**. 

A session is a hash that lives in your application in the server. The session hash can be accessed in any controller file of your application. Whatever data is stored in the session hash can thus be accessed, added to, changed or deleted in any controller file or route at any time *and that change persists* for the duration of the session. 

When we say "duration of the session", we mean the period of time in which you, the client, are interacting with the web application. This is usually the time in between logging in and logging out. 

In fact, the act of "logging in", is simply the the act of having your user id stored inside the session hash. The act of "logging out" is simply the act of your user id being removed from the session hash. 

The session hash is most commonly used to store info like a user's id, which the web application will use to know who is the "current user" and show that user the appropriate information (for example, their profile page, their shopping cart, etc). However, we can put anything we want inside the session hash. 

## Overview

In this lab, we'll be manipulating the session hash *accross HTTP requests**. That means that we will store, change, retreive and delete session data in different controller routes. We'll see that changes we make to the session hash in one controller route will persist after subsequent web requests to other controller routes. 

### Using Sessions in Sinatra

Open up the controller file of this project, `app.rb`. Check out the following lines of code: 

```ruby
configure do
    enable :sessions unless test?
    set :session_secret, "secret"
  end
```

These lines are enabling our application to use the `sessions` keyword to access the session hash. We are also setting a session secret. Don't worry too much about the session secret for now, just know that it keeps our session data safe from outsiders. 

### Instructions

*Remember to `bundle install` before proceeding!*

### Part I:

Run `shotgun` to start up your app. Then, navigate to the `/first_exercise` path. Follow instructions for each step, and be sure to run `learn` before implementing each step. Make each test pass before proceeding to the next step.

### Second Exercise

In our second exercise, we will navigate to the `/second_exercise` path. As in the previous lesson, be sure to run `learn` before implementing each step. Make each test pass before proceeding to the next step.

### Resources
- [Primer on Cookie-Based Sessions](http://www.allaboutcookies.org/cookies/session-cookies-used-for.html)
