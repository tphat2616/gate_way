defmodule Tweet do
  use Ecto.Schema
  import Ecto.Changeset

  @optional_key []

  @required_key [
    :body
  ]

  schema "tweets" do
    field :body, :string
    field :creator, :string, default: "Anonymous"
    field :retweets_count, :integer, default: 0

    timestamps()
  end

  @doc false
  def changeset(%Tweet{} = tweet, params \\ %{}) do
    tweet
    |> cast(params, @optional_key ++ @required_key)
    |> validate_required(@required_key)
    |> check_body_size()
  end

  defp check_body_size(changeset) do
    changeset
    |> validate_length(:body, mix: 1, max: 140)
  end
end
