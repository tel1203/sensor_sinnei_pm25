#
# pm25.rb : getting measurement data about PM2.5 from Sinnei sensor
#

require "./lib_sinnei_pm25.rb"

# READ DATA
# measurement time (sec)
# mass concentration (ug/m^3)
# temprature (Celcius)
# humidty (%rh)
# PM_AD value

s = Sensor_pm25.new(ARGV[0], ARGV[1].to_i)

while (true) do
  printf("%s %f\n", Time.now.strftime("%Y/%m/%d %H:%M:%S"), s.send_RD()[1])
  sleep(60)
end

