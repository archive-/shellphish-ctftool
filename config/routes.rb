Shellfish::Application.routes.draw do
  root to: "static#index"
  get "/ctfs/new" => "ctfs#new", as: :new_ctf
  post "/ctfs" => "ctfs#create", as: :ctfs
  get "/ctf/:id" => "ctfs#show", as: :ctf
  get "/challenges/:id" => "challenges#show", as: :challenge
end
