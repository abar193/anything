defmodule AnythingWeb.PageController do
  use AnythingWeb, :controller

  def home(conn, _params) do
    conn
    |> assign(:projects, projects())
    |> render(:home, layout: false)
  end

  def projects(),
    do: [
      %{
        :name => "Replayka",
        :link => "https://r.abar.lv",
        :source => "https://github.com/abar193/replayka",
        :tags => ["Java", "Quarkus", "QueryDSL", "Postgres"],
        :logo => "/images/r-logo.svg",
        :description => """
        An open-source cookieless feedback gathering platform for low-traffic blogs. Experimenting with custom agregation functions in postgres.

        Project doesn't look like much, but you can see it being used under posts in my blog.
        """
      },
      %{
        :name => "Discrepancy Scanner Plugin",
        :source => "https://github.com/abar193/discanner-maven-plugin",
        :tags => ["Java", "Maven", "Maven Plugin"],
        :logo => "/images/magnifying-glass.svg",
        :description => """
        A plugin for large (legacy and/or enterprise) projects, with lots of internal projects and conflicting dependencies.

        Compares dependencies from the project, where this plugin is involved, with dependencies from other projects on your local machine (if those projects are imported in your project).
        """
      },
      %{
        :name => "What year?!",
        :link => "/anything/year",
        :tags => ["Elixir", "Phoenix"],
        :description => """
        What year was just 10 years ago? The answer might surprize you! 

        Feeling old has never been easier with this Feeling-Old-As-A-Service page!
        """
      },
      %{
        :name => "Batman AML",
        :source => "https://github.com/abar193/batman-aml",
        :tags => ["Java", "Helidon SE", "Microstream"],
        :logo => "/images/batman.svg",
        :description => """
        An open-source cookieless feedback gathering platform for low-traffic blogs. Experimenting with custom agregation functions in postgres.

        Project doesn't look like much, but you can see it being used under posts in my blog.
        """
      },
      %{
        :name => "██████████",
        :logo => "/images/x-mark.svg",
        :tags => [
          "Java",
          "Spring",
          "Spring Boot",
          "Docker",
          "Kafka",
          "Kubernetes",
          "OpenShift",
          "Oracle DB"
        ],
        :description => """
        Throughout my professional career I had a chance to work on all sorts of NDA-protected Java projects - ranging from 20+ year old legacy monolytic Java EE systems, and all the way until the modern microservices built with the latest Spring Boot versions available.

        A job is a job, and I approach each of the projects with equal degree of curiosity and professionalism. 

        However, having spent so many years working on the "industry standart" technological stack, I have no interest in doing that in my free time too. That is why you will find no "Hibernate + Spring Boot + Bootstrap" services here in this list.
        """
      }
    ]
end
