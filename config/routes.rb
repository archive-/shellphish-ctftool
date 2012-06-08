Shellfish::Application.routes.draw do
  root to: "static#index"
  get "/ctfs/new" => "ctfs#new", as: :new_ctf
  post "/ctfs" => "ctfs#create", as: :ctfs
  get "/ctf/:id" => "ctfs#show", as: :ctf
  get "/challenges/:id" => "challenges#show", as: :challenge
  put "/challenges/:id" => "challenges#update", as: :challenge
  put "/categories/:id" => "categories#update", as: :category
end
