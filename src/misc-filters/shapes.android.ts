import { Composition, Generator } from '../common/shapes'
import { distance, color, path, distanceVector, colorVector, scalarVector } from '../common/inputs'

export const shapes = {
  AndroidDestinationATopCompositing: Composition,

  AndroidSourceOutCompositing: Composition,

  AndroidDestinationInCompositing: Composition,

  AndroidSourceInCompositing: Composition,

  AndroidCircleShape: {
    radius: distance,
    color: color,
    ...Generator
  },

  AndroidOvalShape: {
    radiusX: distance,
    radiusY: distance,
    color: color,
    ...Generator
  },

  AndroidPathShape: {
    path: path,
    color: color,
    ...Generator
  },

  AndroidRegularPolygonShape: {
    circumradius: distance,
    borderRadiuses: distanceVector,
    color: color,
    ...Generator
  },

  AndroidQuadGradient: {
    bottomLeftColor: color,
    bottomRightColor: color,
    topLeftColor: color,
    topRightColor: color,
    ...Generator
  },

  AndroidSmoothRadialGradient: {
    centerX: distance,
    centerY: distance,
    radius: distance,
    colors: colorVector,
    stops: scalarVector,
    ...Generator
  }
}
