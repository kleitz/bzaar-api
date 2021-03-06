defmodule Bzaar.ProductImageView do
  use Bzaar.Web, :view

  def render("index.json", %{product_images: product_images}) do
    %{data: render_many(product_images, Bzaar.ProductImageView, "product_image.json")}
  end

  def render("show.json", %{product_image: product_image}) do
    %{data: render_one(product_image, Bzaar.ProductImageView, "product_image.json")}
  end

  def render("product_image.json", %{product_image: product_image}) do
    %{id: product_image.id,
      url: product_image.url,
      sequence: product_image.sequence,
      product_id: product_image.product_id}
  end
end
