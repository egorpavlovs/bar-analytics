module Types
  class MutationType < Types::BaseObject
    field :signup, mutation: Mutations::SignUp
    field :signin, mutation: Mutations::SignIn
    field :update_token, mutation: Mutations::UpdateToken
    field :signout, mutation: Mutations::SignOut
    field :update_user, mutation: Mutations::UpdateUser
    field :request_password_recovery, mutation: Mutations::RequestPasswordRecovery
    field :presign_data, mutation: Mutations::PresignData
    field :update_password, mutation: Mutations::UpdatePassword
    field :create_worker, mutation: Mutations::CreateWorker
    field :create_guest, mutation: Mutations::CreateGuest
    field :create_public_catering, mutation: Mutations::CreatePublicCatering
    field :create_beer_pub, mutation: Mutations::CreateBeerPub
    field :create_cocktail_bar, mutation: Mutations::CreateCocktailBar
    field :create_wine_bar, mutation: Mutations::CreateWineBar
    field :create_cafe, mutation: Mutations::CreateCafe
    field :create_beer, mutation: Mutations::CreateBeer
    field :create_cocktail, mutation: Mutations::CreateCocktail
    field :create_comment, mutation: Mutations::CreateComment
    field :create_food, mutation: Mutations::CreateFood
  end
end
