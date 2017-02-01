//
//  EachineE10W.swift
//  QuadKit
//
//  Created by Gabriel O'Flaherty-Chan on 2017-02-11.
//  Copyright © 2017 Gabrieloc. All rights reserved.
//

import Foundation

struct EachineE10W: QuadcopterModel {
	
	var identificationConversation: Conversation {
		let packets = identification1 + [identification2] + [inputIdentification]
		return Conversation(topic: "Eachine E10W Identification", packets: packets)
	}
	
	let identification1: [Packet] = [
		[
			0x49, 0x54, 0x64, 0x00, 0x00, 0x00, 0x52, 0x00,
			0x00, 0x00, 0x05, 0xa7, 0xa9, 0x0f, 0xb3, 0x6e,
			0xcd, 0x3f, 0xa2, 0xca, 0x7e, 0xc4, 0x8c, 0xa3,
			0x60, 0x04, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0x47, 0xb8, 0xc2, 0x2e, 0x21, 0xd0,
			0x1b, 0xfb, 0x6b, 0x3d, 0xe3, 0x25, 0xa2, 0x7b,
			0x8f, 0xb3, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0xb7, 0x33, 0x0f, 0xb7, 0xc9, 0x57,
			0x82, 0xfc, 0x3d, 0x67, 0xe7, 0xc3, 0xa6, 0x67,
			0x28, 0xda, 0xd8, 0xb5, 0x98, 0x48, 0xc7, 0x67,
			0x0c, 0x94, 0xb2, 0x9b, 0x54, 0xd2, 0x37, 0x9e,
			0x2e, 0x7a
		],
		[
			0x49, 0x54, 0x64, 0x00, 0x00, 0x00, 0x52, 0x00,
			0x00, 0x00, 0x21, 0xe0, 0xc4, 0x77, 0xc7, 0x73,
			0x94, 0xe8, 0x5d, 0x66, 0xa9, 0x8c, 0x2c, 0x92,
			0x2c, 0xc5, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0x47, 0xb8, 0xc2, 0x2e, 0x21, 0xd0,
			0x1b, 0xfb, 0x6b, 0x3d, 0xe3, 0x25, 0xa2, 0x7b,
			0x8f, 0xb3, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0xb7, 0x33, 0x0f, 0xb7, 0xc9, 0x57,
			0x82, 0xfc, 0x3d, 0x67, 0xe7, 0xc3, 0xa6, 0x67,
			0x28, 0xda, 0xd8, 0xb5, 0x98, 0x48, 0xc7, 0x67,
			0x0c, 0x94, 0xb2, 0x9b, 0x54, 0xd2, 0x37, 0x9e,
			0x2e, 0x7a
		],
		[
			0x49, 0x54, 0x64, 0x00, 0x00, 0x00, 0x56, 0x00,
			0x00, 0x00, 0x54, 0x69, 0x6d, 0x47, 0xa5, 0x41,
			0x85, 0x86, 0x00, 0x72, 0x9e, 0x0a, 0x5b, 0xa1,
			0x90, 0x37, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0x47, 0xb8, 0xc2, 0x2e, 0x21, 0xd0,
			0x1b, 0xfb, 0x6b, 0x3d, 0xe3, 0x25, 0xa2, 0x7b,
			0x8f, 0xb3, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0x3b, 0x30, 0x70, 0x85, 0xef, 0x35,
			0xf4, 0x3e, 0xaf, 0x44, 0xcf, 0x6f, 0xc7, 0x9c,
			0x5d, 0x1e, 0x38, 0x27, 0x5b, 0x07, 0xf2, 0xd7,
			0x3f, 0xc0, 0xa7, 0x38, 0xdc, 0x49, 0xd6, 0x0f,
			0xfe, 0x9f
		],
		[
			0x49, 0x54, 0x64, 0x00, 0x00, 0x00, 0x52, 0x00,
			0x00, 0x00, 0x2f, 0x2e, 0xe9, 0x40, 0x93, 0x91,
			0x9e, 0x15, 0x36, 0x09, 0x66, 0x26, 0x02, 0x81,
			0xef, 0xa5, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0x47, 0xb8, 0xc2, 0x2e, 0x21, 0xd0,
			0x1b, 0xfb, 0x6b, 0x3d, 0xe3, 0x25, 0xa2, 0x7b,
			0x8f, 0xb3, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0xb7, 0x33, 0x0f, 0xb7, 0xc9, 0x57,
			0x82, 0xfc, 0x3d, 0x67, 0xe7, 0xc3, 0xa6, 0x67,
			0x28, 0xda, 0xd8, 0xb5, 0x98, 0x48, 0xc7, 0x67,
			0x0c, 0x94, 0xb2, 0x9b, 0x54, 0xd2, 0x37, 0x9e,
			0x2e, 0x7a
		],
		[
			0x49, 0x54, 0x64, 0x00, 0x00, 0x00, 0x52, 0x00,
			0x00, 0x00, 0x09, 0x2d, 0x16, 0x6d, 0xae, 0xbe,
			0x5e, 0xc5, 0xdb, 0x47, 0x35, 0x07, 0x76, 0x7f,
			0x88, 0x9b, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0x47, 0xb8, 0xc2, 0x2e, 0x21, 0xd0,
			0x1b, 0xfb, 0x6b, 0x3d, 0xe3, 0x25, 0xa2, 0x7b,
			0x8f, 0xb3, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0xb7, 0x33, 0x0f, 0xb7, 0xc9, 0x57,
			0x82, 0xfc, 0x3d, 0x67, 0xe7, 0xc3, 0xa6, 0x67,
			0x28, 0xda, 0xd8, 0xb5, 0x98, 0x48, 0xc7, 0x67,
			0x0c, 0x94, 0xb2, 0x9b, 0x54, 0xd2, 0x37, 0x9e,
			0x2e, 0x7a
		],
		[
			0x49, 0x54, 0x64, 0x00, 0x00, 0x00, 0x52, 0x00,
			0x00, 0x00, 0x0d, 0xcf, 0x53, 0x3a, 0x42, 0x51,
			0x63, 0x8c, 0x31, 0x25, 0x94, 0x8b, 0x99, 0x09,
			0xf1, 0xbd, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0x47, 0xb8, 0xc2, 0x2e, 0x21, 0xd0,
			0x1b, 0xfb, 0x6b, 0x3d, 0xe3, 0x25, 0xa2, 0x7b,
			0x8f, 0xb3, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0xb7, 0x33, 0x0f, 0xb7, 0xc9, 0x57,
			0x82, 0xfc, 0x3d, 0x67, 0xe7, 0xc3, 0xa6, 0x67,
			0x28, 0xda, 0xd8, 0xb5, 0x98, 0x48, 0xc7, 0x67,
			0x0c, 0x94, 0xb2, 0x9b, 0x54, 0xd2, 0x37, 0x9e,
			0x2e, 0x7a
		],
		[
			0x49, 0x54, 0x64, 0x00, 0x00, 0x00, 0x5d, 0x00,
			0x00, 0x00, 0xb5, 0x4f, 0x38, 0xc7, 0x5c, 0xe4,
			0x9a, 0xca, 0xa9, 0x0a, 0x73, 0x7d, 0x7d, 0x84,
			0xdb, 0xdc, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0x47, 0xb8, 0xc2, 0x2e, 0x21, 0xd0,
			0x1b, 0xfb, 0x6b, 0x3d, 0xe3, 0x25, 0xa2, 0x7b,
			0x8f, 0xb3, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
			0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
			0xe1, 0x85, 0xee, 0x2e, 0x09, 0xa3, 0x9b, 0xdd,
			0x05, 0xc8, 0x30, 0xa2, 0x81, 0xc8, 0x2a, 0x9e,
			0xda, 0x7f, 0x49, 0x5c, 0xf8, 0xc7, 0x21, 0x31,
			0xd4, 0x89, 0xa8, 0xcf, 0x63, 0x6e, 0xab, 0xbd,
			0x64, 0x3c
		]
	]
	let identification2: Packet = [
		0x49, 0x54, 0x64, 0x00, 0x00, 0x00, 0x52, 0x00,
		0x00, 0x00, 0x72, 0x98, 0xc0, 0x38, 0x9b, 0xc3,
		0x72, 0xa7, 0x1a, 0x17, 0x4b, 0xd1, 0xb5, 0x14,
		0xb3, 0xad, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
		0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
		0xe1, 0x85, 0x47, 0xb8, 0xc2, 0x2e, 0x21, 0xd0,
		0x1b, 0xfb, 0x6b, 0x3d, 0xe3, 0x25, 0xa2, 0x7b,
		0x8f, 0xb3, 0xac, 0xef, 0x63, 0xf7, 0x71, 0x57,
		0xab, 0x2f, 0x53, 0xe3, 0xf7, 0x68, 0xec, 0xd9,
		0xe1, 0x85, 0xb7, 0x33, 0x0f, 0xb7, 0xc9, 0x57,
		0x82, 0xfc, 0x3d, 0x67, 0xe7, 0xc3, 0xa6, 0x67,
		0x28, 0xda, 0xd8, 0xb5, 0x98, 0x48, 0xc7, 0x67,
		0x0c, 0x94, 0xb2, 0x9b, 0x54, 0xd2, 0x37, 0x9e,
		0x2e, 0x7a
	]
	
	let inputIdentification: Packet = [
		0x00, 0x00, 0x01, 0xa0, 0x00, 0x4f, 0x00, 0x03,
		0xe6, 0x0b, 0x00, 0x00, 0x38, 0x24, 0xad, 0x49,
		0x01, 0x5d, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00,
		0xd0, 0x02, 0x40, 0x02, 0x00, 0x02, 0x00, 0x00,
		0xe6, 0x0b, 0x00, 0x00, 0x19, 0x00, 0x00, 0x00
	]
}
