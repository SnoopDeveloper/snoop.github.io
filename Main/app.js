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
      src = "https://deflected.io/source/myclient/deflectedwhite.png"
       
        
        fill="#ffffff"
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
          Checking Your browser please wait 5 seconds ddos protected by <a href="https://deflected.io/">deflected.io</a>
        </footer>
      </main>
    </AnimateSharedLayout>
  );
};

const domContainer = document.querySelector("#app");
ReactDOM.render(createElement(App), domContainer);
