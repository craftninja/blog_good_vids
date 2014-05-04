require 'sinatra/base'

class GoodVids < Sinatra::Application

  get '/' do
    good_vids_table = DB[:good_vids]
    erb :index, :locals => {:vids => good_vids_table.to_a}
  end

  post '/' do
    good_vids_table = DB[:good_vids]
    good_vids_table.insert(
      :vid_name => params[:video_name],
      :vid_url => params[:video_url]
    )
    redirect '/'
  end

  get '/:id' do
    good_vids_table = DB[:good_vids]
    vid = good_vids_table.where(id: params[:id]).first
    erb :show, :locals => {:vid => vid}
  end

  get '/:id/edit' do
    good_vids_table = DB[:good_vids]
    vid = good_vids_table.where(:id => params[:id]).first
    erb :edit, :locals => {:vid => vid}
  end

  put '/:id' do
    good_vids_table = DB[:good_vids]
    good_vids_table.where(:id => params[:id]).update(
      :vid_name => params[:video_name],
      :vid_url => params[:video_url]
    )
    redirect '/'
  end

end
