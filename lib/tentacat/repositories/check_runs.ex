defmodule Tentacat.Repositories.CheckRun do
  import Tentacat
  alias Tentacat.Client

  def create(client, owner, repo, body) when is_map(body) do
    post("repos/#{owner}/#{repo}/check-runs", client, body)
  end

  def update(client, owner, repo, check_run_id, body) when is_map(body) do
    patch("repos/#{owner}/#{repo}/check-runs/#{check_run_id}", client, body)
  end

  def find(client, owner, repo, ref, body) do
    get("repos/#{owner}/#{repo}/check-runs/#{check_run_id}", client)
  end

  def list_for_ref(client, owner, repo, ref, body) do
    get("repos/#{owner}/#{repo}/commits/#{check_run_id}/check-runs", client)
  end

  def list_for_suite(client, owner, repo, check_suite_id) do
    get("repos/#{owner}/#{repo}/check-suites/#{check_suite_id}/check-runs", client)
  end

  def list_annotations(client, owner, repo, ref, body) do
    get("repos/#{owner}/#{repo}/commits/#{check_run_id}/check-runs/annotations", client)
  end
end
