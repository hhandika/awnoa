import clsx from "clsx";
import Heading from "@theme/Heading";
import styles from "./styles.module.css";

type FeatureItem = {
  title: string;
  Svg: React.ComponentType<React.ComponentProps<"svg">>;
  description: JSX.Element;
};

const FeatureList: FeatureItem[] = [
  {
    title: "For Scientists and Hobbyists",
    Svg: require("@site/static/img/scientistAndHobbyist.svg").default,
    description: (
      <>
        AWNOA is a comprehensive field guide designed to help both beginners and
        experts to identify wildlife. It is available in multiple languages and
        can be used by scientists and wildlife enthusiasts.
      </>
    ),
  },
  {
    title: "Collaborative and Community Driven",
    Svg: require("@site/static/img/collaborative.svg").default,
    description: (
      <>
        We develop AWNOA to improve participation of local experts in developing
        field guides. Public contributions are welcome and encouraged to help us
        achieve our goal of making AWNOA the most comprehensive field guide for
        wildlife.
      </>
    ),
  },
  {
    title: "Free, Open-Source, and Modular",
    Svg: require("@site/static/img/modular.svg").default,
    description: (
      <>
        AWNOA is open-source and free to use. Its modular design allows
        contributors to work independently in producing field guides for their
        region.
      </>
    ),
  },
];

function Feature({ title, Svg, description }: FeatureItem) {
  return (
    <div className={clsx("col col--4")}>
      <div className="text--center">
        <Svg className={styles.featureSvg} role="img" />
      </div>
      <div className="text--center padding-horiz--md">
        <Heading as="h3">{title}</Heading>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures(): JSX.Element {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
