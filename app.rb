require 'sinatra/base'

class App < Sinatra::Base

  @@name = ""
  @@coach = ""
  @@pg = ""
  @@sg = ""
  @@pf = ""
  @@sf = ""
  @@c = ""

  get '/newteam' do
    erb :newteam
  end

  get '/team' do
    @name = @@name
    @coach = @@coach
    @pg = @@pg
    @sg = @@sg
    @pf = @@pf
    @sf = @@sf
    @c = @@c 
    erb :team
  end

  post '/team' do
    @@name = params[:name]
    @@coach = params[:coach]
    @@pg = params[:pg]
    @@sg = params[:sg]
    @@pf = params[:pf]
    @@sf = params[:sf]
    @@c = params[:c]
    redirect "/team"
  end


end
