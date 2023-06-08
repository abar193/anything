defmodule AnythingWeb.MyComponents do
  @moduledoc """
  Provides core UI components.

  At the first glance, this module may seem daunting, but its goal is
  to provide some core building blocks in your application, such modals,
  tables, and forms. The components are mostly markup and well documented
  with doc strings and declarative assigns. You may customize and style
  them in any way you want, based on your application growth and needs.

  The default components use Tailwind CSS, a utility-first CSS framework.
  See the [Tailwind CSS documentation](https://tailwindcss.com) to learn
  how to customize them or feel free to swap in another framework altogether.

  Icons are provided by [heroicons](https://heroicons.com). See `icon/1` for usage.
  """
  use Phoenix.Component

  # alias Phoenix.LiveView.JS
  # import AnythingWeb.Gettext

  def navbar(assigns) do
    ~H"""
    <nav class="navbar" role="navigation" aria-label="main navigation">
      <div class="navbar-brand">
        <a class="navbar-item logo" href="/">
          abar.lv
        </a>

        <a
          role="button"
          class="navbar-burger"
          aria-label="menu"
          aria-expanded="false"
          data-target="navbarBasicExample"
        >
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
        </a>
      </div>

      <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start">
          <a class="navbar-item" href="https://mrabar.me/pdf/anton_bardishev_cv.pdf">
            CV
          </a>

          <a class="navbar-item" href="/">
            Projects
          </a>

          <a class="navbar-item" href="https://mrabar.me/posts">
            Blog
          </a>

          <div class="navbar-item has-dropdown is-hoverable">
            <a class="navbar-link">
              Contact
            </a>

            <div class="navbar-dropdown">
              <a href="https://github.com/abar193" class="navbar-item">
                <div class="icon-text">
                  <span class="icon">
                    <svg viewBox="0 0 24 24" width="20px" height="20px" aria-hidden="true">
                      <path
                        fill-rule="evenodd"
                        clip-rule="evenodd"
                        d="M12 0C5.37 0 0 5.506 0 12.303c0 5.445 3.435 10.043 8.205 11.674.6.107.825-.262.825-.585 0-.292-.015-1.261-.015-2.291C6 21.67 5.22 20.346 4.98 19.654c-.135-.354-.72-1.446-1.23-1.738-.42-.23-1.02-.8-.015-.815.945-.015 1.62.892 1.845 1.261 1.08 1.86 2.805 1.338 3.495 1.015.105-.8.42-1.338.765-1.645-2.67-.308-5.46-1.37-5.46-6.075 0-1.338.465-2.446 1.23-3.307-.12-.308-.54-1.569.12-3.26 0 0 1.005-.323 3.3 1.26.96-.276 1.98-.415 3-.415s2.04.139 3 .416c2.295-1.6 3.3-1.261 3.3-1.261.66 1.691.24 2.952.12 3.26.765.861 1.23 1.953 1.23 3.307 0 4.721-2.805 5.767-5.475 6.075.435.384.81 1.122.81 2.276 0 1.645-.015 2.968-.015 3.383 0 .323.225.707.825.585a12.047 12.047 0 0 0 5.919-4.489A12.536 12.536 0 0 0 24 12.304C24 5.505 18.63 0 12 0Z"
                        fill="#18181B"
                      />
                    </svg>
                  </span>
                  <span>GitHub</span>
                </div>
              </a>
              <a href="https://twitter.com/mrabar_me" class="navbar-item">
                <span class="icon-text">
                  <span class="icon">
                    <svg viewBox="0 0 24 24" width="20px" height="20px" aria-hidden="true">
                      <path d="M5.403 14c5.283 0 8.172-4.617 8.172-8.62 0-.131 0-.262-.008-.391A6.033 6.033 0 0 0 15 3.419a5.503 5.503 0 0 1-1.65.477 3.018 3.018 0 0 0 1.263-1.676 5.579 5.579 0 0 1-1.824.736 2.832 2.832 0 0 0-1.63-.916 2.746 2.746 0 0 0-1.821.319A2.973 2.973 0 0 0 8.076 3.78a3.185 3.185 0 0 0-.182 1.938 7.826 7.826 0 0 1-3.279-.918 8.253 8.253 0 0 1-2.64-2.247 3.176 3.176 0 0 0-.315 2.208 3.037 3.037 0 0 0 1.203 1.836A2.739 2.739 0 0 1 1.56 6.22v.038c0 .7.23 1.377.65 1.919.42.54 1.004.912 1.654 1.05-.423.122-.866.14-1.297.052.184.602.541 1.129 1.022 1.506a2.78 2.78 0 0 0 1.662.598 5.656 5.656 0 0 1-2.007 1.074A5.475 5.475 0 0 1 1 12.64a7.827 7.827 0 0 0 4.403 1.358" />
                    </svg>
                  </span>
                  <span>Twitter</span>
                </span>
              </a>
              <a href="https://www.linkedin.com/in/mrabar/" class="navbar-item">
                <span class="icon-text">
                  <span class="icon">
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      width="20px"
                      height="20px"
                      class="ionicon"
                      viewBox="0 0 512 512"
                    >
                      <path d="M444.17 32H70.28C49.85 32 32 46.7 32 66.89v374.72C32 461.91 49.85 480 70.28 480h373.78c20.54 0 35.94-18.21 35.94-38.39V66.89C480.12 46.7 464.6 32 444.17 32zm-273.3 373.43h-64.18V205.88h64.18zM141 175.54h-.46c-20.54 0-33.84-15.29-33.84-34.43 0-19.49 13.65-34.42 34.65-34.42s33.85 14.82 34.31 34.42c-.01 19.14-13.31 34.43-34.66 34.43zm264.43 229.89h-64.18V296.32c0-26.14-9.34-44-32.56-44-17.74 0-28.24 12-32.91 23.69-1.75 4.2-2.22 9.92-2.22 15.76v113.66h-64.18V205.88h64.18v27.77c9.34-13.3 23.93-32.44 57.88-32.44 42.13 0 74 27.77 74 87.64z" />
                    </svg>
                  </span>
                  <span>Linkedin</span>
                </span>
              </a>
              <a href="https://www.chess.com/member/board_slam" class="navbar-item">
                <span class="icon-text">
                  <span class="icon">
                    <svg
                      version="1.1"
                      id="Icons"
                      xmlns="http://www.w3.org/2000/svg"
                      xmlns:xlink="http://www.w3.org/1999/xlink"
                      viewBox="0 0 32 32"
                      width="20px"
                      height="20px"
                      xml:space="preserve"
                    >
                      <path
                        class="st0"
                        d="M22,25H9c-1.1,0-2,0.9-2,2v2h18v-2c0-1.1-0.9-2-2-2H22L22,25c0-2.6,1-5,2.8-6.8L25,18l0,0c0.6-4.8-1.8-9.6-6-12
    l0,0l0,0c-0.6-1.3-1.8-2.3-3.1-2.7L15,3v3l-2,1v1l-5.1,3.4c-0.6,0.4-0.9,1-0.9,1.7V15l1.1-0.2c2.6-0.5,5.3-0.8,7.9-0.8h0l-0.5,0.5
    C12,17,10,21,9,25"
                      />
                    </svg>
                  </span>
                  <span>Chess.com</span>
                </span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </nav>
    """
  end

  def common_script(assigns) do
    ~H"""
    <script>
        document.addEventListener('DOMContentLoaded', () => {
        const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);
        $navbarBurgers.forEach( el => {
          el.addEventListener('click', () => {
            const target = el.dataset.target;
            const $target = document.getElementById(target);
            el.classList.toggle('is-active');
            $target.classList.toggle('is-active');
          });
        });
      });
    </script>
    """
  end

  attr :name, :string
  attr :description, :string
  attr :logo, :string, required: false
  attr :link, :string, required: false
  attr :source, :string, required: false
  attr :tags, :string, required: false

  def project_card(assigns) do
    ~H"""
    <div class="card pb-3">
      <div class="card-content">
        <div class="media">
          <div class="media-left">
            <figure class="image is-48x48">
              <img src={assigns[:logo] || "/images/logo.svg"} alt="Project logo" />
            </figure>
          </div>
          <div class="media-content">
            <p class="title is-4"><%= @name %></p>
            <p class="subtitle is-6">
              <%= if @link do %>
                <a href={@link} class="pr-2">
                  <span class="icon-text">
                    <span class="icon">
                      <img src="/images/link.svg" />
                    </span>
                    <span>Go to project</span>
                  </span>
                </a>
              <% end %>
              <%= if @source do %>
                <a href={@source}>
                  <span class="icon-text">
                    <span class="icon">
                      <img src="/images/eye.svg" />
                    </span>
                    <span>View source code</span>
                  </span>
                </a>
              <% end %>
            </p>
          </div>
        </div>

        <div class="content">
          <p class="pre"><%= @description %></p>

          <%= for tag <- (@tags || []) do %>
            <span class="tag is-info"><%= tag %></span>
          <% end %>
        </div>
      </div>
    </div>
    """
  end
end
