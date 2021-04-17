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
        d="M15663.53 3599.9V2237.92c-24.75-20.26-142.6-142.81-255.02-229.61-138.6-107-271.58-203.63-393.87-281.62-595.96-380.09-1038.52-569.88-2261.81-991.28-2227.22-807.13-5362.5-924.33-7650.32-476.5-274.69 53.77-1629.04 244.72-1721.37 468.13-129.12 312.47-144.46 1750.15-144.46 2146.47 3339.07-1140.75 7230.63-860.4 10464.72 544.8 0 714.66-246.76 3018.25-483.43 3571.42-623.2-360.22-4132.19-1055.39-4736.28-880.9l565.57 2218.09c579.58-5.38 3161.04 506.61 3512.16 746.38-249.45 1094-1609.84 3238.5-2286.34 4164.63-432.57 592.17-977.25 1195.28-1483.49 1720.09-176.4 182.87-317.94 187.41-324.04 472.31l3.48 2515.81c1729.76-929.17 4000.06-3923.72 4942.88-5725.78 1167.97-2232.39 2345.4-6076.17 2251.61-8620.46zM7246.26 17946.13v-2693.7c-567.61-345.17-1791.81-1984.4-2226.24-2594.2-666.35-935.33-1263.64-2069.09-1714.07-3139.33-1001.16-2378.84-1608.37-5887.15-1235.18-8461.37C1890.61 1164.73 81.48 2203.08 55.8 2242.22c-157.18 239.53 61 2683.86 125.05 3157.31 453.4 3350.8 1671.87 6778.66 3756.28 9379.77 692.51 864.17 2376.08 2716.44 3309.13 3166.83z"
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
          Sensor Mitigation by <a href="https://fluxcdn.com">FluxCDN.com</a>
        </footer>
      </main>
    </AnimateSharedLayout>
  );
};

const domContainer = document.querySelector("#app");
ReactDOM.render(createElement(App), domContainer);
