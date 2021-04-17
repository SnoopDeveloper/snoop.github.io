const { useEffect, useState, createElement } = React;
const { motion, AnimatePresence, AnimateSharedLayout } = Motion;

const hours = new Date().getHours();
const isLight = hours > 6 && hours < 20;

const isMobileWidth = document.body.clientWidth < 764;

if (!isLight) {
  document.body.className = "dark";
}

const titles = [
  "Verifying your browser",
  "Everything looks OK!",
  "Oops... you don't look well",
];

const messages = [
  "We're just checking if your request is not malicious. Don't worry, it'll only take a couple seconds.",
  "We will redirect you to the website right now",
  "Your access to the website you are accessing has been blocked.",
];

const contentVariants = {
  hidden: {
    x: -45,
    opacity: 0,
  },
  visible: {
    x: 0,
    opacity: 1,
  },
};

const contentMobileVariants = {
  hidden: {
    y: 25,
    opacity: 0,
  },
  visible: {
    y: 0,
    opacity: 1,
  },
};

const LogoSplash = ({ success }) => {
  return (
    <motion.svg
      xmlns="http://www.w3.org/2000/svg"
      width="120"
      height="114.53"
      viewBox="0 0 15668.79 17946.13"
      shapeRendering="geometricPrecision"
      textRendering="geometricPrecision"
      imageRendering="optimizeQuality"
      fillRule="evenodd"
      clipRule="evenodd"
      className="pulse"
      layoutId="logo"
    >
      <motion.path 
      id="logo-path" 
      d="M 408.00,698.88
           C 407.62,699.62 407.88,700.88 408.63,701.62
             409.63,702.62 410.00,702.25 410.00,700.25
             410.00,697.25 409.38,696.75 408.00,698.88 Z
           M 0.00,420.00
           C 0.00,420.00 0.00,840.00 0.00,840.00
             0.00,840.00 420.00,840.00 420.00,840.00
             420.00,840.00 840.00,840.00 840.00,840.00
             840.00,840.00 840.00,420.00 840.00,420.00
             840.00,420.00 840.00,0.00 840.00,0.00
             840.00,0.00 420.00,0.00 420.00,0.00
             420.00,0.00 0.00,0.00 0.00,0.00
             0.00,0.00 0.00,420.00 0.00,420.00 Z
           M 433.25,141.50
           C 441.88,147.87 449.75,153.62 451.00,154.38
             464.88,162.75 477.50,169.50 481.25,170.62
             483.00,171.12 488.12,173.37 492.75,175.62
             505.00,181.62 523.00,186.62 546.75,190.62
             569.12,194.38 618.50,192.12 640.00,186.25
             642.38,185.50 648.12,185.00 652.62,185.00
             661.63,185.00 662.75,185.75 667.00,193.75
             673.38,206.12 673.38,312.87 667.00,360.62
             664.13,382.12 656.88,418.38 652.00,435.62
             646.25,455.88 636.00,485.88 631.75,494.12
             630.12,497.50 628.75,500.88 628.75,501.75
             628.75,503.50 608.00,544.75 605.75,547.50
             604.88,548.50 601.50,554.12 598.12,559.75
             591.50,571.38 572.62,597.00 560.88,610.62
             551.50,621.50 528.88,644.00 521.12,650.25
             515.00,655.12 511.38,658.12 503.88,664.50
             499.38,668.38 471.50,687.50 470.50,687.50
             470.25,687.50 467.75,688.88 465.12,690.50
             456.50,696.00 430.88,708.50 421.75,711.75
             416.88,713.38 416.25,713.38 412.38,710.88
             410.00,709.50 403.88,706.75 398.75,705.00
             390.62,702.12 381.25,697.50 362.25,687.00
             352.25,681.38 319.25,657.50 309.38,648.62
             297.25,637.75 273.00,612.50 263.62,601.12
             252.13,587.25 250.38,585.00 247.50,580.00
             245.75,577.12 243.12,573.62 241.62,572.12
             240.00,570.75 238.75,568.88 238.75,568.12
             238.75,567.38 235.75,562.00 232.00,556.12
             221.25,539.50 220.00,537.38 220.00,536.12
             220.00,535.12 214.63,524.25 211.38,518.75
             210.75,517.75 209.63,515.50 208.88,513.75
             208.12,512.00 207.00,509.75 206.50,508.75
             202.00,501.00 195.75,484.75 188.75,463.12
             185.88,454.12 183.00,445.12 182.25,443.12
             180.50,438.12 176.38,420.88 175.00,413.12
             174.50,409.62 173.38,405.25 172.62,403.38
             171.88,401.37 171.25,398.25 171.25,396.25
             171.25,394.25 170.75,392.38 170.12,392.00
             169.63,391.62 168.75,387.62 168.25,383.00
             167.75,378.38 166.88,372.38 166.25,369.50
             162.50,352.38 160.75,320.62 160.62,267.50
             160.62,211.88 161.38,201.00 165.88,192.12
             168.62,186.62 171.50,186.38 190.00,189.50
             199.25,191.12 211.62,193.00 217.50,193.75
             231.50,195.37 270.62,195.37 283.88,193.75
             306.88,190.87 350.38,174.75 371.25,161.25
             374.38,159.25 378.00,157.00 379.38,156.25
             385.38,153.00 387.88,151.38 391.00,148.50
             392.88,146.75 396.38,144.00 398.75,142.37
             401.13,140.75 403.75,139.00 404.38,138.50
             411.75,132.63 415.50,130.00 416.50,130.00
             417.25,130.00 424.75,135.25 433.25,141.50 Z"
       
        
        fill="#736bfa"
        variants={{
          hidden: {
            scale: 0,
            pathLength: 0,
            fill: "rgba(255, 255, 255, 0)",
          },
          visible: {
            rotate: 360,
            scale: 1,
            fill: success ? "#1abc9c" : "#736bfa",
          },
        }}
        initial="hidden"
        animate="visible"
        exit="finish"
        transition={{
          default: { duration: 0.8, ease: "easeInOut" },
          pathLength: { duration: 1, ease: [1, 0, 0.8, 1] },
          fill: { duration: 0.5, ease: [1, 0, 0.8, 1] },
        }}
      />
    </motion.svg>
  );
};

const App = () => {
  const [splash, setSplash] = useState(true);
  const [theme] = useState(isLight ? "light" : "dark");
  const [step, setStep] = useState(0);

  function onSuccess() {
    setStep(1);
  }

  useEffect(() => {
    setTimeout(() => {
      setSplash(false);
    }, 1200);
  }, []);

  useEffect(() => {
    setTimeout(() => {
      grecaptcha.render("captcha", {
        sitekey: "6Lecq04aAAAAAEmDeysFH52CUtwjDkdorxkGhao0",
        theme,
        callback: (response) => {
          if (!!response) {
            onSuccess();
          }
        },
      });
    }, 1600);
  }, []);

  return (
    <AnimateSharedLayout>
      <main className="background">
        <section>
          <LogoSplash success={step === 1} />
          {!splash && (
            <motion.div
              layoutId="message"
              className="content"
              initial="hidden"
              animate="visible"
              variants={isMobileWidth ? contentMobileVariants : contentVariants}
              transition={{
                default: { duration: 0.9, ease: "easeInOut" },
              }}
            >
              <h1>{titles[step]}</h1>
              <h2>{messages[step]}</h2>
              {step === 0 && (
                <div className="captchaa-container">
                  <div id="captchaa" />
                </div>
              )}
            </motion.div>
          )}
        </section>
        <footer>
          Checking Your browser... protected by <a href="https://deflected.io/">deflected.io</a>
        </footer>
      </main>
    </AnimateSharedLayout>
  );
};

const domContainer = document.querySelector("#app");
ReactDOM.render(createElement(App), domContainer);
