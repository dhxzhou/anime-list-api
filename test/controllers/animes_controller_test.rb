require "test_helper"

class AnimesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/animes.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Anime.count, data.length
  end

  test "create" do
    assert_difference "Anime.count", 1 do
      post "/animes.json", params: { name: "lake", image_url: "test.jpg", description: "test", genre: "test" }
      assert_response 200
    end
  end

  test "show" do
    get "/animes/#{Anime.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "image_url", "description", "genre", "created_at", "updated_at"], data.keys
  end

  test "update" do
    anime = Anime.first
    patch "/animes/#{anime.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Anime.count", -1 do
      delete "/animes/#{Anime.first.id}.json"
      assert_response 200
    end
  end
end
