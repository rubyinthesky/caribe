require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Contenido", with: @post.contenido
    fill_in "Fecha", with: @post.fecha
    fill_in "Id usuario creador", with: @post.id_usuario_creador
    fill_in "Titulo", with: @post.titulo
    fill_in "Url imagen", with: @post.url_imagen
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Contenido", with: @post.contenido
    fill_in "Fecha", with: @post.fecha
    fill_in "Id usuario creador", with: @post.id_usuario_creador
    fill_in "Titulo", with: @post.titulo
    fill_in "Url imagen", with: @post.url_imagen
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end