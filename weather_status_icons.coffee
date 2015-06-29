chalk = require "chalk"

module.exports =
  iconSunny: [
    "#{chalk.bold.yellow '    \\   /    '}",
    "#{chalk.bold.yellow '     .-.     '}",
    "#{chalk.bold.yellow '  ― (   ) ―  '}",
    "#{chalk.bold.yellow '     `-’     '}",
    "#{chalk.bold.yellow '    /   \\    '}"
  ]
  iconPartlyCloudy: [
    "#{chalk.bold.yellow '   \\  /        '}",
    "#{chalk.bold.yellow ' _ /\"\""'}#{chalk.bold.white '".-.    '}",
    "#{chalk.bold.yellow '   \\_"'}#{chalk.bold.white '"(   ).  '}",
    "#{chalk.bold.yellow '   /"'}#{chalk.bold.white '"(___(__)   '}",
    "             "
  ]
  iconCloudy: [
    "              ",
    "#{chalk.bold.white '      .--.    '}",
    "#{chalk.bold.white '   .-(    ).  '}",
    "#{chalk.bold.white '  (___.__)__) '}",
    "              "
  ]
  iconVeryCloudy: [
    "              ",
    "#{chalk.bold.gray '     .--.     '}",
    "#{chalk.bold.gray '  .-(    ).   '}",
    "#{chalk.bold.gray ' (___.__)__)  '}",
    "              "
  ]
  iconLightShowers: [
    "#{chalk.bold.yellow ' _`/\"\""'}#{chalk.bold.white '.-.    '}",
    "#{chalk.bold.yellow '  ,\\_"'}#{chalk.bold.white '(   ).  '}",
    "#{chalk.bold.yellow '   /"'}#{chalk.bold.white '(___(__) '}",
    "#{chalk.bold.blue '     ‘ ‘ ‘ ‘  '}",
    "#{chalk.bold.blue '    ‘ ‘ ‘ ‘   '}"
  ]
  iconHeavyShowers: [
    "#{chalk.bold.yellow ' _`/\"\""'}#{chalk.bold.gray '.-.    '}",
    "#{chalk.bold.yellow '  ,\\_"'}#{chalk.bold.gray '(   ).  '}",
    "#{chalk.bold.yellow '   /"'}#{chalk.bold.gray '(___(__) '}",
    "#{chalk.bold.blue '   ‚‘‚‘‚‘‚‘  '}",
    "#{chalk.bold.blue '   ‚’‚’‚’‚’  '}"
  ]
  iconLightSnowShowers: [
    "#{chalk.bold.yellow ' _`/\"\""'}#{chalk.bold.white '.-.    '}",
    "#{chalk.bold.yellow '  ,\\_"'}#{chalk.bold.white '(   ).  '}",
    "#{chalk.bold.yellow '   /"'}#{chalk.bold.white '(___(__) '}",
    "#{chalk.bold.white '     *  *  * '}",
    "#{chalk.bold.white '    *  *  *  '}"
  ]
  iconHeavySnowShowers: [
    "#{chalk.bold.yellow ' _`/\"\""'}#{chalk.bold.gray '.-.    '}",
    "#{chalk.bold.yellow '  ,\\_"'}#{chalk.bold.gray '(   ).  '}",
    "#{chalk.bold.yellow '   /"'}#{chalk.bold.gray '(___(__) '}",
    "#{chalk.bold.white '    * * * *  '}",
    "#{chalk.bold.white '   * * * *   '}"
  ]
  iconLightSleetShowers: [
    "#{chalk.bold.yellow ' _`/\"\""'}#{chalk.bold.white '.-.    '}",
    "#{chalk.bold.yellow '  ,\\_"'}#{chalk.bold.white '(   ).  '}",
    "#{chalk.bold.yellow '   /"'}#{chalk.bold.white '(___(__) '}",
    "#{chalk.bold.blue '     ‘ "'}#{chalk.bold.white '*'}#{chalk.bold.blue ' ‘'}#{chalk.bold.white '* '}",
    "#{chalk.bold.white '    *'}#{chalk.bold.blue ' ‘ '}#{chalk.bold.white '*'}#{chalk.bold.blue '‘  '}"
  ]
  iconThunderyShowers: [
    "#{chalk.bold.yellow ' _`/\"\""'}#{chalk.bold.white '.-.    '}",
    "#{chalk.bold.yellow '  ,\\_"'}#{chalk.bold.white '(   ).  '}",
    "#{chalk.bold.yellow '   /'}#{chalk.bold.white '(___(__) '}",
    "#{chalk.bold.yellow '    ⚡'}#{chalk.bold.blue '‘ ‘'}#{chalk.bold.yellow '⚡'}#{chalk.bold.blue '‘ ‘ '}",
    "#{chalk.bold.blue '    ‘ ‘ ‘ ‘  '}"
  ]
  iconThunderyHeavyRain: [
    "#{chalk.bold.gray '     .-.     '}",
    "#{chalk.bold.gray '    (   ).   '}",
    "#{chalk.bold.gray '   (___(__)  '}",
    "#{chalk.bold.blue '  ‚‘'}#{chalk.bold.yellow '⚡'}#{chalk.bold.blue '‘‚'}#{chalk.bold.yellow '⚡'}#{chalk.bold.blue '‚‘   '}",
    "#{chalk.bold.blue '  ‚’‚’'}#{chalk.bold.yellow '⚡'}#{chalk.bold.blue '’‚’   '}"
  ]
  iconThunderySnowShowers: [
    "#{chalk.bold.yellow ' _`/\"\""'}#{chalk.bold.white '.-.    '}",
    "#{chalk.bold.yellow '  ,\\_"'}#{chalk.bold.white '(   ).  '}",
    "#{chalk.bold.yellow '   /"'}#{chalk.bold.white '(___(__) '}",
    "#{chalk.bold.white '     *"'}#{chalk.bold.yellow '⚡'}#{chalk.bold.white ' *'}#{chalk.bold.yellow '⚡'}#{chalk.bold.white '* '}",
    "#{chalk.bold.white '    *  *  *  '}"
  ]
  iconLightRain: [
    "#{chalk.bold.white '     .-.     '}",
    "#{chalk.bold.white '    (   ).   '}",
    "#{chalk.bold.white '   (___(__)  '}",
    "#{chalk.bold.blue '    ‘ ‘ ‘ ‘  '}",
    "#{chalk.bold.blue '   ‘ ‘ ‘ ‘   '}"
  ]
  iconHeavyRain: [
    "#{chalk.bold.gray '     .-.     '}",
    "#{chalk.bold.gray '    (   ).   '}",
    "#{chalk.bold.gray '   (___(__)  '}",
    "#{chalk.bold.blue '  ‚‘‚‘‚‘‚‘   '}",
    "#{chalk.bold.blue '  ‚’‚’‚’‚’   '}"
  ]
  iconLightSnow: [
    "#{chalk.bold.white '     .-.     '}",
    "#{chalk.bold.white '    (   ).   '}",
    "#{chalk.bold.white '   (___(__)  '}",
    "#{chalk.bold.white '    *  *  *  '}",
    "#{chalk.bold.white '   *  *  *   '}"
  ]
  iconHeavySnow: [
    "#{chalk.bold.gray '     .-.     '}",
    "#{chalk.bold.gray '    (   ).   '}",
    "#{chalk.bold.gray '   (___(__)  '}",
    "#{chalk.bold.white '   * * * *   '}",
    "#{chalk.bold.white '  * * * *    '}"
  ]
  iconLightSleet: [
    "#{chalk.bold.white '     .-.     '}",
    "#{chalk.bold.white '    (   ).   '}",
    "#{chalk.bold.white '   (___(__)  '}",
    "#{chalk.bold.blue '    ‘ "'}#{chalk.bold.white '*'}#{chalk.bold.blue ' ‘ '}#{chalk.bold.white '*  '}",
    "#{chalk.bold.white '   *'}#{chalk.bold.blue ' ‘ '}#{chalk.bold.white '*'}#{chalk.bold.blue ' ‘   '}"
  ]
  iconFog: [
    "            ",
    "#{chalk.bold.white  '_ - _ - _ - '}",
    "#{chalk.bold.white  ' _ - _ - _  '}",
    "#{chalk.bold.white  '_ - _ - _ - '}",
    "            "
  ]
  iconUnknown: [
    "#{chalk.bold.red '    .-.      '}",
    "#{chalk.bold.red '     __)     '}",
    "#{chalk.bold.red '    (        '}",
    "#{chalk.bold.red '     `-’     '}",
    "#{chalk.bold.red '      •      '}"
  ]