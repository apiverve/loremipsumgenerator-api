declare module '@apiverve/loremipsumgenerator' {
  export interface loremipsumgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface loremipsumgeneratorResponse {
    status: string;
    error: string | null;
    data: LoremIpsumGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface LoremIpsumGeneratorData {
      words:     number | null;
      sentences: number | null;
      text:      null | string;
  }

  export default class loremipsumgeneratorWrapper {
    constructor(options: loremipsumgeneratorOptions);

    execute(callback: (error: any, data: loremipsumgeneratorResponse | null) => void): Promise<loremipsumgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: loremipsumgeneratorResponse | null) => void): Promise<loremipsumgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<loremipsumgeneratorResponse>;
  }
}
