require "test_helper"

class MangasControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/mangas.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Manga.count, data.length
  end

  test "create" do
    assert_difference "Manga.count", 1 do
      post "/mangas.json", params: { name: "lake", image_url: "test.jpg", description: "test", genre: "test" }
      assert_response 200
    end
  end

  test "show" do
    get "/mangas/#{Manga.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "image_url", "description", "genre", "created_at", "updated_at"], data.keys
  end

  test "update" do
    manga = Manga.first
    patch "/mangas/#{manga.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end

  test "destroy" do
    assert_difference "Manga.count", -1 do
      delete "/mangas/#{Manga.first.id}.json"
      assert_response 200
    end
  end
end
