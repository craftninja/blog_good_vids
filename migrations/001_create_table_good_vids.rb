Sequel.migration do
  up do
    create_table(:good_vids) do
      primary_key :id
      String :vid_name, :null=>false
      String :vid_url, :null=>false
    end
  end

  down do
    drop_table(:good_vids)
  end
end
