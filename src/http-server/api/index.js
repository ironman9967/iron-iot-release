
import each from 'lodash/fp/each'

import { createReleaseApi } from './release'

export const routeApi = ({ server, logger }) => {
	const { createRoutes } = createReleaseApi({ logger })
	each(r => server.route(r))(createRoutes())
	return server
}
