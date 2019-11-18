defmodule Lchika do
  # Durations are in milliseconds
  @on_duration 500
  @off_duration 500
  @roop_num 10
  @ipc_roop 2000

  def lchika(num) do #num=0から開始
    case num do
      n when n >= @roop_num ->
        IO.puts("end")
      m when m >= 0 ->
        {:ok, gpio} = Circuits.GPIO.open(18, :output)
        Circuits.GPIO.write(gpio, 1)#デモ用
        :timer.sleep(@on_duration)
        Circuits.GPIO.write(gpio, 0)
        :timer.sleep(@off_duration)
        lchika(num + 1)
      _ ->
        IO.puts("引数は0にして下さい")
    end
  end

  def chika() do
    {:ok, gpio} = Circuits.GPIO.open(18, :output)
    Circuits.GPIO.write(gpio, 1)
  end
  def stop() do
    {:ok, gpio} = Circuits.GPIO.open(18, :output)
    Circuits.GPIO.write(gpio, 0)
  end
end
