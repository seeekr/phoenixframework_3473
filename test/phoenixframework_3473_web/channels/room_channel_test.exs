defmodule Phoenixframework3473Web.RoomChannelTest do
  use Phoenixframework3473Web.ChannelCase

  @arg 123
  #  @arg :hello
  #    @arg "hello"

  test "ping replies with status ok", %{socket: socket} do
    ref = push(socket, "ping", %{"#{@arg}" => "there"})
    assert_reply ref, :ok, %{"#{@arg}" => "there"}
  end

  test "shout broadcasts to room:lobby", %{socket: socket} do
    push(socket, "shout", %{"hello" => "all"})
    assert_broadcast "shout", %{"hello" => "all"}
  end

  test "broadcasts are pushed to the client", %{socket: socket} do
    broadcast_from!(socket, "broadcast", %{"some" => "data"})
    assert_push "broadcast", %{"some" => "data"}
  end
end
