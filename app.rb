require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  before do
    content_type :txt
  end

  get '/' do
    "Welcome to Sinatra Sessions! In this lab, we will be learning about the general principles behind a sessions cookie. In order to proceed, let's go to the '/first_lesson' path."
  end

  get '/first_lesson' do
    "Your first lesson will be to set your session key-value pair. When you navigate to the '/set' path, it should set session[:foo] equal to 'hello'."
  end

  get '/set' do
    # Set session[:foo] here!

    if session[:foo]
      "Session value set. It's currently set to #{session[:foo]}"
      redirect '/fetch'
    else
      "Session value has not been set!"
    end
  end

  get '/seccond_lesson' do
    "Your second lesson will be to set your session id key-value pair. When you navigate to the '/set_session' path, it should set session[:id] equal to 1."
  end

  get '/set_session' do
    # Set session[:id] here!

    if session[:id]
      "Session ID set. It's currently set to #{session[:id]}."
      redirect '/fetch_session_id'
    else
      "Session ID has not been set!"
    end
  end

  get '/fetch' do
    "Session value: #{session[:foo]}."
  end

  get '/fetch_session_id'
    "Session ID: #{session[:id]}."
  end

  get '/logout' do
    session.clear
    "Session has now been cleared: #{session.inspect}. Continue on to the '/finish' line!"
  end

  get '/finish' do
    "Hopefully that explains a little more about the concept of sessions. Sessions is simply a way to store user data on a temporary basis."
  end
end
